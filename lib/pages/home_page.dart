import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pata_aqui/components/form/input.dart';

class HomePage extends StatelessWidget {
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
      child: buildInputContainer(
        context,
        'Procure por um companheirinho',
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
      child: GridView.count(
        mainAxisSpacing: 50,
        crossAxisSpacing: 50,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: Placeholder(
              fallbackHeight: 50,
              fallbackWidth: 50,
              color: Colors.red,
            ),
          ),
          Container(
            child: Placeholder(
              fallbackHeight: 50,
              fallbackWidth: 50,
              color: Colors.red,
            ),
          ),
          Container(
            child: Placeholder(
              fallbackHeight: 50,
              fallbackWidth: 50,
              color: Colors.red,
            ),
          ),
          Container(
            child: Placeholder(
              fallbackHeight: 50,
              fallbackWidth: 50,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
