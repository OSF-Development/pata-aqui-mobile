import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pata_aqui/components/form/input.dart';

class HomeScreen extends StatelessWidget {
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
        'PATA AQUI',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  buildInputContainer(BuildContext context, String labelText) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 50,
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          ),
        ],
      ),
      child: FormInput(
        false,
        label: labelText,
        border: InputBorder.none,
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
        child: Column(
          children: [
            buildInputContainer(
              context,
              'Procure por um companheirinho',
            ),
            SizedBox(
              height: 35,
            ),
            Placeholder(
              fallbackHeight: 200,
              color: Colors.red,
              strokeWidth: 5,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Placeholder(
                  fallbackHeight: 140,
                  fallbackWidth: 140,
                  color: Colors.red,
                  strokeWidth: 5,
                ),
                Placeholder(
                  fallbackHeight: 140,
                  fallbackWidth: 140,
                  color: Colors.red,
                  strokeWidth: 5,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Placeholder(
                  fallbackHeight: 140,
                  fallbackWidth: 140,
                  color: Colors.red,
                  strokeWidth: 5,
                ),
                Placeholder(
                  fallbackHeight: 140,
                  fallbackWidth: 140,
                  color: Colors.red,
                  strokeWidth: 5,
                ),
              ],
            )
          ],
        ));
  }
}
