import 'package:flutter/material.dart';
import 'package:pata_aqui/components/form/button.dart';
import 'package:pata_aqui/components/form/input.dart';
import 'package:pata_aqui/pages/login.dart';

enum PetGender { male, female }
enum Vaccinated { yes, no, iDontKnow }

class CadPet extends StatefulWidget {
  const CadPet({Key? key}) : super(key: key);

  @override
  _CadPetState createState() => _CadPetState();
}

class _CadPetState extends State<CadPet> {
  PetGender? _character = PetGender.male;
  Vaccinated? _vaccinated = Vaccinated.yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
      appBar: buildAppBar(),
    );
  }

  buildAppBar() {
    return AppBar(
      title: Text(
        'Cadastre um bixinho',
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
    );
  }

  buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
        bottom: 200,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffffc2bb),
            Color(0xffd8bfd8),
          ],
        ),
      ),
      child: buildForm(context),
    );
  }

  buildForm(BuildContext context) {
    return Column(
      children: <Widget>[
        buildInputContainer(context, 'Nome:'),
        SizedBox(
          height: 20,
        ),
        buildInputContainer(context, 'Raça:'),
        SizedBox(
          height: 20,
        ),
        buildInputContainer(context, 'Idade:'),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'Sexo:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            buildRadioGender(
              'Macho',
              PetGender.male,
            ),
            SizedBox(
              width: 30,
            ),
            buildRadioGender(
              'Fêmea',
              PetGender.female,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'Vacinado:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            buildRadioVaccinated(
              'Sim',
              Vaccinated.yes,
            ),
            buildRadioVaccinated(
              'Não',
              Vaccinated.no,
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        FormButton(
          30,
          "CADASTRE UM PET",
          color: Color(0xFFEC9EA0),
          textColor: Colors.black87,
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ),
          },
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }

  buildInputContainer(BuildContext context, String labelText) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 30,
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5),
        ],
      ),
      child: FormInput(
        false,
        label: labelText,
        border: InputBorder.none,
      ),
    );
  }

  buildRadioGender(String text, PetGender value) {
    return Row(
      children: <Widget>[
        Radio(
          value: value,
          groupValue: _character,
          onChanged: (PetGender? value) {
            setState(() {
              _character = value;
            });
          },
          activeColor: Colors.black87,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  buildRadioVaccinated(String text, Vaccinated value) {
    return Row(
      children: <Widget>[
        Radio(
          value: value,
          groupValue: _vaccinated,
          onChanged: (Vaccinated? value) {
            setState(() {
              _vaccinated = value;
            });
          },
          activeColor: Colors.black87,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
