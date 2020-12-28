class MyDropDownItem {
  int id;
  int itemCode;
  String itemName;

  MyDropDownItem() {}

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      "id": id,
      "item_code": itemCode,
      "item_name": itemName,
    };

    return map;
  }

  MyDropDownItem.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    itemCode = map["itemCode"];
    itemName = map["itemName"];
  }

  //no id here
  String toJson() {
    String str = '{';
    str += '"itemCode" : "$itemCode",';
    str += '"itemName" : "$itemName"';
    str += '}';
    return str;
  }

  MyDropDownItem.fromJson(Map<String, dynamic> map) {
    itemCode = map['itemCode'];
    itemCode = map['itemCode'];
  }
}
