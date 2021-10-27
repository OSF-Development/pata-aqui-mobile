import 'package:pata_aqui/model/user.dart';

class Pet {
  late int id;
  late String name;
  late String race;
  late String genre;
  late int age;
  late String vaccinated;

  Pet(this.id, this.name, this.race, this.genre, this.age, this.vaccinated);

  Pet.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.race = json['race'];
    this.genre = json['genre'];
    this.age = json['age'];
    this.vaccinated = json['vaccinated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['race'] = this.race;
    data['genre'] = this.genre;
    data['age'] = this.age;
    data['vaccinated'] = this.vaccinated;

    return data;
  }
}
