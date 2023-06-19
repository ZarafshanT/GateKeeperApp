import 'Data.dart';
import 'dart:convert';

/// success : true
/// data : [{"id":1,"firstname":"noman","lastname":"khan","cnic":"37805","address":"shajja","mobileno":"03215550979","roleid":3,"rolename":"resident","image":"1666864810.jpg","gatekeeperid":7,"userid":3,"visitortype":"guest","name":"hadi abrar","description":"this is my first entry","vechileno":"rwp 2005","arrivaldate":"2022-10-30","arrivaltime":"04:00:00","status":0,"statusdescription":"unapproved"},{"id":2,"firstname":"noman","lastname":"khan","cnic":"37805","address":"shajja","mobileno":"03215550979","roleid":3,"rolename":"resident","image":"1666864810.jpg","gatekeeperid":7,"userid":3,"visitortype":"guest","name":"hadi abrar","description":"this is my first entry","vechileno":"rwp 2005","arrivaldate":"2022-10-30","arrivaltime":"04:00:00","status":0,"statusdescription":"unapproved"},{"id":3,"firstname":"noman","lastname":"khan","cnic":"37805","address":"shajja","mobileno":"03215550979","roleid":3,"rolename":"resident","image":"1666864810.jpg","gatekeeperid":7,"userid":3,"visitortype":"guest","name":"hadi abrar","description":"this is my first entry","vechileno":"rwp 2005","arrivaldate":"2022-10-30","arrivaltime":"04:00:00","status":0,"statusdescription":"unapproved"},{"id":4,"firstname":"noman","lastname":"khan","cnic":"37805","address":"shajja","mobileno":"03215550979","roleid":3,"rolename":"resident","image":"1666864810.jpg","gatekeeperid":7,"userid":3,"visitortype":"guest","name":"hadi abrar","description":"this is my first entry","vechileno":"rwp 2005","arrivaldate":"2022-10-30","arrivaltime":"04:00:00","status":0,"statusdescription":"unapproved"},{"id":5,"firstname":"noman","lastname":"khan","cnic":"37805","address":"shajja","mobileno":"03215550979","roleid":3,"rolename":"resident","image":"1666864810.jpg","gatekeeperid":7,"userid":3,"visitortype":"guest","name":"hadi abrar","description":"this is my first entry","vechileno":"rwp 2005","arrivaldate":"2022-10-30","arrivaltime":"04:00:00","status":0,"statusdescription":"unapproved"},{"id":6,"firstname":"noman","lastname":"khan","cnic":"37805","address":"shajja","mobileno":"03215550979","roleid":3,"rolename":"resident","image":"1666864810.jpg","gatekeeperid":7,"userid":3,"visitortype":"guest","name":"hadi abrar","description":"this is my first entry","vechileno":"rwp 2005","arrivaldate":"2022-10-30","arrivaltime":"04:00:00","status":0,"statusdescription":"unapproved"},{"id":7,"firstname":"noman","lastname":"khan","cnic":"37805","address":"shajja","mobileno":"03215550979","roleid":3,"rolename":"resident","image":"1666864810.jpg","gatekeeperid":7,"userid":3,"visitortype":"guest","name":"hadi abrar","description":"this is my first entry","vechileno":"rwp 2005","arrivaldate":"2022-10-30","arrivaltime":"04:00:00","status":0,"statusdescription":"unapproved"},{"id":16,"firstname":"Farahan","lastname":"khan","cnic":"8668","address":"whhaha","mobileno":"046","roleid":3,"rolename":"resident","image":"1667295492.jpg","gatekeeperid":7,"userid":12,"visitortype":"Delivery","name":"vbb","description":"ttt","vechileno":"ggy","arrivaldate":"2022-11-26","arrivaltime":"16:41:00","status":0,"statusdescription":"unapproved"}]

PreApproveEntry preApproveEntryFromJson(String str) => PreApproveEntry.fromJson(json.decode(str));
String preApproveEntryToJson(PreApproveEntry data) => json.encode(data.toJson());
class PreApproveEntry {
  PreApproveEntry({
      bool? success, 
      List<Data>? data,}){
    _success = success;
    _data = data;
}

  PreApproveEntry.fromJson(dynamic json) {
    _success = json['success'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _success;
  List<Data>? _data;
PreApproveEntry copyWith({  bool? success,
  List<Data>? data,
}) => PreApproveEntry(  success: success ?? _success,
  data: data ?? _data,
);
  bool? get success => _success;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}