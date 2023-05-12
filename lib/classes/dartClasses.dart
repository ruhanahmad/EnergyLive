// To parse this JSON data, do
//
//     final device = deviceFromJson(jsonString);

import 'dart:convert';

Device deviceFromJson(String str) => Device.fromJson(json.decode(str));

String deviceToJson(Device data) => json.encode(data.toJson());

class Device {
    int id;
    int parentId;
    bool isPreview;
    String name;
    int createdAt;
    int updatedAt;
    List<Widge> widgets;
    List<DeviceElement> devices;
    String theme;
    bool keepScreenOn;
    bool isAppConnectedOn;
    bool isNotificationsOff;
    bool isShared;
    bool isActive;
    bool widgetBackgroundOn;
    int color;
    bool isDefaultColor;

    Device({
        required this.id,
        required this.parentId,
        required this.isPreview,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
        required this.widgets,
        required this.devices,
        required this.theme,
        required this.keepScreenOn,
        required this.isAppConnectedOn,
        required this.isNotificationsOff,
        required this.isShared,
        required this.isActive,
        required this.widgetBackgroundOn,
        required this.color,
        required this.isDefaultColor,
    });

    factory Device.fromJson(Map<String, dynamic> json) => Device(
        id: json["id"],
        parentId: json["parentId"],
        isPreview: json["isPreview"],
        name: json["name"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        widgets: List<Widge>.from(json["widgets"].map((x) => Widge.fromJson(x))),
        devices: List<DeviceElement>.from(json["devices"].map((x) => DeviceElement.fromJson(x))),
        theme: json["theme"],
        keepScreenOn: json["keepScreenOn"],
        isAppConnectedOn: json["isAppConnectedOn"],
        isNotificationsOff: json["isNotificationsOff"],
        isShared: json["isShared"],
        isActive: json["isActive"],
        widgetBackgroundOn: json["widgetBackgroundOn"],
        color: json["color"],
        isDefaultColor: json["isDefaultColor"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "parentId": parentId,
        "isPreview": isPreview,
        "name": name,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "widgets": List<dynamic>.from(widgets.map((x) => x.toJson())),
        "devices": List<dynamic>.from(devices.map((x) => x.toJson())),
        "theme": theme,
        "keepScreenOn": keepScreenOn,
        "isAppConnectedOn": isAppConnectedOn,
        "isNotificationsOff": isNotificationsOff,
        "isShared": isShared,
        "isActive": isActive,
        "widgetBackgroundOn": widgetBackgroundOn,
        "color": color,
        "isDefaultColor": isDefaultColor,
    };
}

class DeviceElement {
    int id;
    String name;
    String boardType;
    String vendor;
    String connectionType;
    bool isUserIcon;

    DeviceElement({
        required this.id,
        required this.name,
        required this.boardType,
        required this.vendor,
        required this.connectionType,
        required this.isUserIcon,
    });

    factory DeviceElement.fromJson(Map<String, dynamic> json) => DeviceElement(
        id: json["id"],
        name: json["name"],
        boardType: json["boardType"],
        vendor: json["vendor"],
        connectionType: json["connectionType"],
        isUserIcon: json["isUserIcon"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "boardType": boardType,
        "vendor": vendor,
        "connectionType": connectionType,
        "isUserIcon": isUserIcon,
    };
}

class Widge {
    String type;
    int id;
    int x;
    int y;
    int color;
    int width;
    int height;
    int tabId;
    bool isDefaultColor;
    List<Tab>? tabs;
    int? activeTxtColor;
    int? underlineColor;
    int? textColor;
    String? label;
    int? deviceId;
    PinType? pinType;
    int? pin;
    bool? pwmMode;
    bool? rangeMappingOn;
    double? min;
    double? max;
    String? value;
    int? frequency;
    FontSize? fontSize;
    TextAlignment? textAlignment;
    bool? pushMode;
    ButtonState? onButtonState;
    ButtonState? offButtonState;
    String? edge;
    String? buttonStyle;
    bool? lockSize;
    String? valueFormatting;
    List<DataStream>? dataStreams;
    String? period;
    String? stacking;
    bool? showTitle;
    bool? showLegend;
    bool? yAxisValues;
    bool? xAxisValues;
    bool? showXAxis;
    bool? allowFullScreen;
    bool? overrideYAxis;
    bool? hideGradient;
    double? yAxisMin;
    double? yAxisMax;
    bool? isPercentMaxMin;
    String? goalLine;
    List<String>? selectedPeriods;
    IOsTokens? iOsTokens;
    bool? notifyWhenOffline;
    int? notifyWhenOfflineIgnorePeriod;
    String? priority;
    List<Rule>? rules;
    String? to;
    String? contentType;

    Widge({
        required this.type,
        required this.id,
        required this.x,
        required this.y,
        required this.color,
        required this.width,
        required this.height,
        required this.tabId,
        required this.isDefaultColor,
        this.tabs,
        this.activeTxtColor,
        this.underlineColor,
        this.textColor,
        this.label,
        this.deviceId,
        this.pinType,
        this.pin,
        this.pwmMode,
        this.rangeMappingOn,
        this.min,
        this.max,
        this.value,
        this.frequency,
        this.fontSize,
        this.textAlignment,
        this.pushMode,
        this.onButtonState,
        this.offButtonState,
        this.edge,
        this.buttonStyle,
        this.lockSize,
        this.valueFormatting,
        this.dataStreams,
        this.period,
        this.stacking,
        this.showTitle,
        this.showLegend,
        this.yAxisValues,
        this.xAxisValues,
        this.showXAxis,
        this.allowFullScreen,
        this.overrideYAxis,
        this.hideGradient,
        this.yAxisMin,
        this.yAxisMax,
        this.isPercentMaxMin,
        this.goalLine,
        this.selectedPeriods,
        this.iOsTokens,
        this.notifyWhenOffline,
        this.notifyWhenOfflineIgnorePeriod,
        this.priority,
        this.rules,
        this.to,
        this.contentType,
    });

    factory Widge.fromJson(Map<String, dynamic> json) => Widge(
        type: json["type"],
        id: json["id"],
        x: json["x"],
        y: json["y"],
        color: json["color"],
        width: json["width"],
        height: json["height"],
        tabId: json["tabId"],
        isDefaultColor: json["isDefaultColor"],
        tabs: json["tabs"] == null ? [] : List<Tab>.from(json["tabs"]!.map((x) => Tab.fromJson(x))),
        activeTxtColor: json["activeTxtColor"],
        underlineColor: json["underlineColor"],
        textColor: json["textColor"],
        label: json["label"],
        deviceId: json["deviceId"],
        pinType: pinTypeValues.map[json["pinType"]] ,
        pin: json["pin"],
        pwmMode: json["pwmMode"],
        rangeMappingOn: json["rangeMappingOn"],
        min: json["min"],
        max: json["max"],
        value: json["value"],
        frequency: json["frequency"],
        fontSize: fontSizeValues.map[json["fontSize"]],
      textAlignment: textAlignmentValues.map[json["textAlignment"]],
        pushMode: json["pushMode"],
        onButtonState: json["onButtonState"] == null ? null : ButtonState.fromJson(json["onButtonState"]),
        offButtonState: json["offButtonState"] == null ? null : ButtonState.fromJson(json["offButtonState"]),
        edge: json["edge"],
        buttonStyle: json["buttonStyle"],
        lockSize: json["lockSize"],
        valueFormatting: json["valueFormatting"],
        dataStreams: json["dataStreams"] == null ? [] : List<DataStream>.from(json["dataStreams"]!.map((x) => DataStream.fromJson(x))),
        period: json["period"],
        stacking: json["stacking"],
        showTitle: json["showTitle"],
        showLegend: json["showLegend"],
        yAxisValues: json["yAxisValues"],
        xAxisValues: json["xAxisValues"],
        showXAxis: json["showXAxis"],
        allowFullScreen: json["allowFullScreen"],
        overrideYAxis: json["overrideYAxis"],
        hideGradient: json["hideGradient"],
        yAxisMin: json["yAxisMin"],
        yAxisMax: json["yAxisMax"],
        isPercentMaxMin: json["isPercentMaxMin"],
        goalLine: json["goalLine"],
        selectedPeriods: json["selectedPeriods"] == null ? [] : List<String>.from(json["selectedPeriods"]!.map((x) => x)),
        iOsTokens: json["iOSTokens"] == null ? null : IOsTokens.fromJson(json["iOSTokens"]),
        notifyWhenOffline: json["notifyWhenOffline"],
        notifyWhenOfflineIgnorePeriod: json["notifyWhenOfflineIgnorePeriod"],
        priority: json["priority"],
        rules: json["rules"] == null ? [] : List<Rule>.from(json["rules"]!.map((x) => Rule.fromJson(x))),
        to: json["to"],
        contentType: json["contentType"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "x": x,
        "y": y,
        "color": color,
        "width": width,
        "height": height,
        "tabId": tabId,
        "isDefaultColor": isDefaultColor,
        "tabs": tabs == null ? [] : List<dynamic>.from(tabs!.map((x) => x.toJson())),
        "activeTxtColor": activeTxtColor,
        "underlineColor": underlineColor,
        "textColor": textColor,
        "label": label,
        "deviceId": deviceId,
        "pinType": pinTypeValues.reverse[pinType],
        "pin": pin,
        "pwmMode": pwmMode,
        "rangeMappingOn": rangeMappingOn,
        "min": min,
        "max": max,
        "value": value,
        "frequency": frequency,
        "fontSize": fontSizeValues.reverse[fontSize],
        "textAlignment": textAlignmentValues.reverse[textAlignment],
        "pushMode": pushMode,
        "onButtonState": onButtonState?.toJson(),
        "offButtonState": offButtonState?.toJson(),
        "edge": edge,
        "buttonStyle": buttonStyle,
        "lockSize": lockSize,
        "valueFormatting": valueFormatting,
        "dataStreams": dataStreams == null ? [] : List<dynamic>.from(dataStreams!.map((x) => x.toJson())),
        "period": period,
        "stacking": stacking,
        "showTitle": showTitle,
        "showLegend": showLegend,
        "yAxisValues": yAxisValues,
        "xAxisValues": xAxisValues,
        "showXAxis": showXAxis,
        "allowFullScreen": allowFullScreen,
        "overrideYAxis": overrideYAxis,
        "hideGradient": hideGradient,
        "yAxisMin": yAxisMin,
        "yAxisMax": yAxisMax,
        "isPercentMaxMin": isPercentMaxMin,
        "goalLine": goalLine,
        "selectedPeriods": selectedPeriods == null ? [] : List<dynamic>.from(selectedPeriods!.map((x) => x)),
        "iOSTokens": iOsTokens?.toJson(),
        "notifyWhenOffline": notifyWhenOffline,
        "notifyWhenOfflineIgnorePeriod": notifyWhenOfflineIgnorePeriod,
        "priority": priority,
        "rules": rules == null ? [] : List<dynamic>.from(rules!.map((x) => x.toJson())),
        "to": to,
        "contentType": contentType,
    };
}

class DataStream {
    String title;
    String graphType;
    int color;
    int targetId;
    Pin pin;
    int flip;
    double yAxisMin;
    double yAxisMax;
    bool showYAxis;
    bool cubicSmoothingEnabled;
    bool connectMissingPointsEnabled;
    bool isPercentMaxMin;
    String yAxisScale;
    double delta;
    bool userDeltaModifyAllowed;
    int maximumFractionDigits;

    DataStream({
        required this.title,
        required this.graphType,
        required this.color,
        required this.targetId,
        required this.pin,
        required this.flip,
        required this.yAxisMin,
        required this.yAxisMax,
        required this.showYAxis,
        required this.cubicSmoothingEnabled,
        required this.connectMissingPointsEnabled,
        required this.isPercentMaxMin,
        required this.yAxisScale,
        required this.delta,
        required this.userDeltaModifyAllowed,
        required this.maximumFractionDigits,
    });

    factory DataStream.fromJson(Map<String, dynamic> json) => DataStream(
        title: json["title"],
        graphType: json["graphType"],
        color: json["color"],
        targetId: json["targetId"],
        pin: Pin.fromJson(json["pin"]),
        flip: json["flip"],
        yAxisMin: json["yAxisMin"],
        yAxisMax: json["yAxisMax"],
        showYAxis: json["showYAxis"],
        cubicSmoothingEnabled: json["cubicSmoothingEnabled"],
        connectMissingPointsEnabled: json["connectMissingPointsEnabled"],
        isPercentMaxMin: json["isPercentMaxMin"],
        yAxisScale: json["yAxisScale"],
        delta: json["delta"],
        userDeltaModifyAllowed: json["userDeltaModifyAllowed"],
        maximumFractionDigits: json["maximumFractionDigits"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "graphType": graphType,
        "color": color,
        "targetId": targetId,
        "pin": pin.toJson(),
        "flip": flip,
        "yAxisMin": yAxisMin,
        "yAxisMax": yAxisMax,
        "showYAxis": showYAxis,
        "cubicSmoothingEnabled": cubicSmoothingEnabled,
        "connectMissingPointsEnabled": connectMissingPointsEnabled,
        "isPercentMaxMin": isPercentMaxMin,
        "yAxisScale": yAxisScale,
        "delta": delta,
        "userDeltaModifyAllowed": userDeltaModifyAllowed,
        "maximumFractionDigits": maximumFractionDigits,
    };
}

class Pin {
    int pin;
    bool pwmMode;
    bool rangeMappingOn;
    PinType pinType;
    double min;
    double max;
    String? label;

    Pin({
        required this.pin,
        required this.pwmMode,
        required this.rangeMappingOn,
        required this.pinType,
        required this.min,
        required this.max,
        this.label,
    });

    factory Pin.fromJson(Map<String, dynamic> json) => Pin(
        pin: json["pin"],
        pwmMode: json["pwmMode"],
        rangeMappingOn: json["rangeMappingOn"],
        pinType: pinTypeValues.map[json["pinType"]]!,
        min: json["min"],
        max: json["max"],
        label: json["label"],
    );

    Map<String, dynamic> toJson() => {
        "pin": pin,
        "pwmMode": pwmMode,
        "rangeMappingOn": rangeMappingOn,
        "pinType": pinTypeValues.reverse[pinType],
        "min": min,
        "max": max,
        "label": label,
    };
}

enum PinType { VIRTUAL }

final pinTypeValues = EnumValues({
    "VIRTUAL": PinType.VIRTUAL
});

enum FontSize { MEDIUM, SMALL }

final fontSizeValues = EnumValues({
    "MEDIUM": FontSize.MEDIUM,
    "SMALL": FontSize.SMALL
});

class IOsTokens {
    String the0Fe3Ed0033D24E90Be402Cb4F44339Ad;

    IOsTokens({
        required this.the0Fe3Ed0033D24E90Be402Cb4F44339Ad,
    });

    factory IOsTokens.fromJson(Map<String, dynamic> json) => IOsTokens(
        the0Fe3Ed0033D24E90Be402Cb4F44339Ad: json["0FE3ED00-33D2-4E90-BE40-2CB4F44339AD"],
    );

    Map<String, dynamic> toJson() => {
        "0FE3ED00-33D2-4E90-BE40-2CB4F44339AD": the0Fe3Ed0033D24E90Be402Cb4F44339Ad,
    };
}

class ButtonState {
    String text;
    int textColor;
    int backgroundColor;

    ButtonState({
        required this.text,
        required this.textColor,
        required this.backgroundColor,
    });

    factory ButtonState.fromJson(Map<String, dynamic> json) => ButtonState(
        text: json["text"],
        textColor: json["textColor"],
        backgroundColor: json["backgroundColor"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "textColor": textColor,
        "backgroundColor": backgroundColor,
    };
}

class Rule {
    Pin triggerPin;
    Condition condition;
    List<Action> actions;
    bool isActive;

    Rule({
        required this.triggerPin,
        required this.condition,
        required this.actions,
        required this.isActive,
    });

    factory Rule.fromJson(Map<String, dynamic> json) => Rule(
        triggerPin: Pin.fromJson(json["triggerPin"]),
        condition: Condition.fromJson(json["condition"]),
        actions: List<Action>.from(json["actions"].map((x) => Action.fromJson(x))),
        isActive: json["isActive"],
    );

    Map<String, dynamic> toJson() => {
        "triggerPin": triggerPin.toJson(),
        "condition": condition.toJson(),
        "actions": List<dynamic>.from(actions.map((x) => x.toJson())),
        "isActive": isActive,
    };
}

class Action {
    String type;
    String message;

    Action({
        required this.type,
        required this.message,
    });

    factory Action.fromJson(Map<String, dynamic> json) => Action(
        type: json["type"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "message": message,
    };
}

class Condition {
    String type;
    double value;

    Condition({
        required this.type,
        required this.value,
    });

    factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        type: json["type"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "value": value,
    };
}
//ye jo kaam hay yeh bohat bara hay ismen har widget alag generate hona hay uski aik aik details likhi hain 
//text alignment etc .. 
// nh hm ny bs kch graphs show krny h zruri nh widgets ki alingment size jo b mention h vysa same ho,hm ny bs
//kch data show krvana h grahs vgyra mai han wohi bta raha hun
class Tab {
    int id;
    String label;

    Tab({
        required this.id,
        required this.label,
    });

    factory Tab.fromJson(Map<String, dynamic> json) => Tab(
        id: json["id"],
        label: json["label"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "label": label,
    };
}

enum TextAlignment { LEFT, MIDDLE }

final textAlignmentValues = EnumValues({
    "LEFT": TextAlignment.LEFT,
    "MIDDLE": TextAlignment.MIDDLE
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
