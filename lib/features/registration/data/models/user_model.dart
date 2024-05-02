class UserModel {
  String? name;
  String? email;
  String? phone;
  String? userId;
  String? image;

  UserModel({
    this.name,
    this.email,
    this.phone,
    this.userId,
    this.image,
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
