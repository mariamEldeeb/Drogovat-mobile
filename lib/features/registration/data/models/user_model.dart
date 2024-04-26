class UserModel {
  String? name;
  String? email;
  String? phone;
  String? userId;
  String? image;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.userId,
    required this.image,
  });

  UserModel.fromJson(Map<String, dynamic> json){
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    userId = json['userId'];
    image = json['image'];
  }

  Map<String, dynamic> toMap(){
    return{
      'name':name,
      'email':email,
      'phone':phone,
      'userId':userId,
      'image':image,
    };
  }
}
