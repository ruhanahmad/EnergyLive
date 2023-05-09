import 'package:energylive/api.dart';
import 'package:energylive/controller/userController.dart';
import 'package:energylive/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {

  UserController userController = Get.put(UserController());

    Future<void>? alerting(){
    showDialog(context: context, builder: (context){
      return     AlertDialog(
        content: new
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(width: 5),
            TextFormField(
              onChanged: (value) {
            userController.deviceName     =   value;
            userController.update();
              },
        // controller: textEditingController,
        decoration: InputDecoration(
          hintText: 'Enter Device Name',
        ),
      ),
      SizedBox(height: 20,),
         TextFormField(
            onChanged: (value) {
            userController.deviceId    =   value;
            userController.update();
              },
        // controller: textEditingController,
        decoration: InputDecoration(
          hintText: 'Enter Device #',
        ),
      ),
           
           
                   SizedBox(height: 20,),
                            Row(
                              children: [
                                                             ElevatedButton
                  
                (
                  
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 8.0),
                                          elevation: 5.0,
                                          // primary: kPrimaryColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50.0)),
                                        ),
                  onPressed: () async{
                  await  userController.addDevice();
                  Navigator.pop(context);
                    // await userController.orderPhysicalCard();
          //  await userController.terminatedCard();
        
//  print(userController.address);
                   }, child: Text("Yes")),
                   SizedBox(width: 30,),
                                ElevatedButton
                  
                (
                  
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 8.0),
                                          elevation: 5.0,
                                          // primary: kPrimaryColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50.0)),
                                        ),
                  onPressed: () async{
                    Navigator.pop(context);

                   }, child: Text("No")),
                              ],
                            )
          ],
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [GestureDetector(
          onTap: ()async {
            Get.to(MyWidget());
            // await FirebaseAuth.instance.signOut();
  // Get.to(LoginPage());


          },
          child: Text("Logout"))],
      ),
       floatingActionButton:  FloatingActionButton(
        
onPressed: (){
alerting();
},  

              

  ),
      body: Container(
           child: 
           Column(
            children: [
            



           ],
           ),

      ),
    );
  }
}