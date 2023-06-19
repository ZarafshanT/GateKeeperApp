import 'dart:convert';

/// id : 1
/// firstname : "noman"
/// lastname : "khan"
/// cnic : "37805"
/// address : "shajja"
/// mobileno : "03215550979"
/// roleid : 3
/// rolename : "resident"
/// image : "1666864810.jpg"
/// gatekeeperid : 7
/// userid : 3
/// visitortype : "guest"
/// name : "hadi abrar"
/// description : "this is my first entry"
/// vechileno : "rwp 2005"
/// arrivaldate : "2022-10-30"
/// arrivaltime : "04:00:00"
/// status : 0
/// statusdescription : "unapproved"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      int? id, 
      String? firstname, 
      String? lastname, 
      String? cnic, 
      String? address, 
      String? mobileno, 
      int? roleid, 
      String? rolename, 
      String? image, 
      int? gatekeeperid, 
      int? userid, 
      String? visitortype, 
      String? name, 
      String? description, 
      String? vechileno, 
      String? arrivaldate, 
      String? arrivaltime, 
      int? status, 
      String? statusdescription,}){
    _id = id;
    _firstname = firstname;
    _lastname = lastname;
    _cnic = cnic;
    _address = address;
    _mobileno = mobileno;
    _roleid = roleid;
    _rolename = rolename;
    _image = image;
    _gatekeeperid = gatekeeperid;
    _userid = userid;
    _visitortype = visitortype;
    _name = name;
    _description = description;
    _vechileno = vechileno;
    _arrivaldate = arrivaldate;
    _arrivaltime = arrivaltime;
    _status = status;
    _statusdescription = statusdescription;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _cnic = json['cnic'];
    _address = json['address'];
    _mobileno = json['mobileno'];
    _roleid = json['roleid'];
    _rolename = json['rolename'];
    _image = json['image'];
    _gatekeeperid = json['gatekeeperid'];
    _userid = json['userid'];
    _visitortype = json['visitortype'];
    _name = json['name'];
    _description = json['description'];
    _vechileno = json['vechileno'];
    _arrivaldate = json['arrivaldate'];
    _arrivaltime = json['arrivaltime'];
    _status = json['status'];
    _statusdescription = json['statusdescription'];
  }
  int? _id;
  String? _firstname;
  String? _lastname;
  String? _cnic;
  String? _address;
  String? _mobileno;
  int? _roleid;
  String? _rolename;
  String? _image;
  int? _gatekeeperid;
  int? _userid;
  String? _visitortype;
  String? _name;
  String? _description;
  String? _vechileno;
  String? _arrivaldate;
  String? _arrivaltime;
  int? _status;
  String? _statusdescription;
Data copyWith({  int? id,
  String? firstname,
  String? lastname,
  String? cnic,
  String? address,
  String? mobileno,
  int? roleid,
  String? rolename,
  String? image,
  int? gatekeeperid,
  int? userid,
  String? visitortype,
  String? name,
  String? description,
  String? vechileno,
  String? arrivaldate,
  String? arrivaltime,
  int? status,
  String? statusdescription,
}) => Data(  id: id ?? _id,
  firstname: firstname ?? _firstname,
  lastname: lastname ?? _lastname,
  cnic: cnic ?? _cnic,
  address: address ?? _address,
  mobileno: mobileno ?? _mobileno,
  roleid: roleid ?? _roleid,
  rolename: rolename ?? _rolename,
  image: image ?? _image,
  gatekeeperid: gatekeeperid ?? _gatekeeperid,
  userid: userid ?? _userid,
  visitortype: visitortype ?? _visitortype,
  name: name ?? _name,
  description: description ?? _description,
  vechileno: vechileno ?? _vechileno,
  arrivaldate: arrivaldate ?? _arrivaldate,
  arrivaltime: arrivaltime ?? _arrivaltime,
  status: status ?? _status,
  statusdescription: statusdescription ?? _statusdescription,
);
  int? get id => _id;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  String? get cnic => _cnic;
  String? get address => _address;
  String? get mobileno => _mobileno;
  int? get roleid => _roleid;
  String? get rolename => _rolename;
  String? get image => _image;
  int? get gatekeeperid => _gatekeeperid;
  int? get userid => _userid;
  String? get visitortype => _visitortype;
  String? get name => _name;
  String? get description => _description;
  String? get vechileno => _vechileno;
  String? get arrivaldate => _arrivaldate;
  String? get arrivaltime => _arrivaltime;
  int? get status => _status;
  String? get statusdescription => _statusdescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['cnic'] = _cnic;
    map['address'] = _address;
    map['mobileno'] = _mobileno;
    map['roleid'] = _roleid;
    map['rolename'] = _rolename;
    map['image'] = _image;
    map['gatekeeperid'] = _gatekeeperid;
    map['userid'] = _userid;
    map['visitortype'] = _visitortype;
    map['name'] = _name;
    map['description'] = _description;
    map['vechileno'] = _vechileno;
    map['arrivaldate'] = _arrivaldate;
    map['arrivaltime'] = _arrivaltime;
    map['status'] = _status;
    map['statusdescription'] = _statusdescription;
    return map;
  }

}