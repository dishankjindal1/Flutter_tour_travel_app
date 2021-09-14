import 'package:flutter/material.dart';

class FooterOfDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _isLogged = false;

    if (_isLogged) {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationVersion: '1.0.0',
                    applicationName: "Heaven Rider India",
                    applicationLegalese: "Made with ❤️ by Dishank Jindal",
                    children: [
                      Text('You can view and check all the terms&conditions' +
                          'and privacy policy in here.')
                    ],
                  ),
                ),
              );
            },
          )
        ],
      );
    }
  }
}
