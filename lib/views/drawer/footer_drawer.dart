import 'package:flutter/material.dart';

class FooterOfDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var _isLogged = false;

    if(_isLogged) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MaterialButton(
            child: Text('Logout'),
            onPressed: null,
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MaterialButton(
            child: Text('Login'),
            onPressed: null,
          ),
          VerticalDivider(),
          MaterialButton(
            child: Text('Sign Up'),
            onPressed: null,
          )
        ],
      );
    }
  }
}
