import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:heaven_riders_india/models/drawer_menu.dart';
import 'package:heaven_riders_india/views/drawer/footer_drawer.dart';
import 'package:heaven_riders_india/views/drawer/header_drawer.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: HeaderOfDrawer(),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 8,
                child: ListView.builder(
                    itemCount: drawerMenu.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () async {
                          String _markupSource = await loadAsset(context, 'assets/privacy_policy.md');
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>
                              Scaffold(body: SafeArea(child: Markdown(data: _markupSource)),),
                          ));
                        },
                        child: ListTile(
                          leading: drawerMenu[index].leadingIcon,
                          title: Text(drawerMenu[index].title),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              Expanded(
                flex: 1,
                child: FooterOfDrawer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<String> loadAsset(BuildContext context, String value) async {
  return await DefaultAssetBundle.of(context).loadString(value);
}