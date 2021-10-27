class User {
  late int id;
  late String name;
  late String email;
  late String password;

  User(this.id, this.name, this.email, this.password);

  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.email = json['email'];
    this.password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;

    return data;
  }
}
