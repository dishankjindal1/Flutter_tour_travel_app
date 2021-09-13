import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heaven_riders_india/views/drawer/drawer_view.dart';
import 'Controllers/auth.dart';
import 'views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Auth().checkUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              appBar: AppBar(),
              drawer: AppDrawer(),
              body: HomePage(),
            );
          } else {
            return Image.asset(
              'assets/images/splash-gif.gif',
              height: Get.height,
              fit: BoxFit.fitHeight,
            );
          }
        },
      ),
    );
  }
}

class MyViewPage extends StatefulWidget {
  @override
  _MyViewPageState createState() => _MyViewPageState();
}

class _MyViewPageState extends State<MyViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraCamera(
        onFile: (file) => print(file),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => CameraCamera(
                onFile: (file) {
                  //When take foto you should close camera
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
            ),
          );
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
