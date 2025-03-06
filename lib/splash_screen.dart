import 'package:cat_dog_calssifier/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   SplashServices _splashServices = SplashServices();
  //   _splashServices.Login(context);
  // }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: _height - 300,
              width: _width,
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset('assets/dog2.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 199, 175, 101),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "D",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Text(
                    "og",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "&",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "C",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Text(
                    "at",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ),
            // Text(
            //   "Classifer",
            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            // ),
          ],
        ),
      ),
    );
  }
}
