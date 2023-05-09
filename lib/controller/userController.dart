import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:get/get.dart';
   
  
  class UserController extends GetxController {
    var userId;
 getIDo() async {
    userId = await FirebaseAuth.instance.currentUser;
    update();
    print(userId);
  }


String? deviceName;
String? deviceId;

    Future addDevice() async {
  
 await getIDo();




    try {
      await FirebaseFirestore.instance
          .collection("Devices")
          .doc(userId!.uid)
          .set({
        "Device Name": deviceName,
        "Devide Id": deviceId,
        
      }
              //   {
              //   "username":username,
              //   "balance":beneBalance,
              //   "DateTime":DateTime.now(),

              // }
              ).then((value) async {
        Get.snackbar("Added", "Devide Added Successfully");

        update();
        //  Get.to(ReasonForUse());
      });
    } catch (e) {
      Get.snackbar("Prepaid", "${e.toString()}");
    }
  }

  }


