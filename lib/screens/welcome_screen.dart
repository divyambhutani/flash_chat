import '../widgets/long_button.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  // AnimationController controller;
  // Animation animation;

  // @override
  // void initState() {
  //   super.initState();
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(seconds: 1),
  //   );

  //   // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

  //   // colorTween animation
  //   animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
  //       .animate(controller);

  //   controller.forward();
  //   controller.addStatusListener((status) {
  //     //   if (status == AnimationStatus.completed) {
  //     //     controller.reverse(from: 1);
  //     //   } else if (status == AnimationStatus.dismissed) {
  //     //     controller.forward();
  //     //   }
  //     print(status);
  //   });
  //   controller.addListener(() {
  //     setState(() {
  //       // addListener is called every time the controller.value is changed
  //       // for every change we are calling setState
  //     });
  //     print(animation.value);
  //   });
  // }

  // @override
  // void dispose() {
  //   // even after animation is completed it hold the resources
  //   // to release those system resources , dispose the Animation controller object
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      speed: Duration(milliseconds: 250),
                      textStyle: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            LongButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                //Go to login screen.
                Navigator.pushNamed(
                  context,
                  LoginScreen.routeName,
                );
              },
              child: Text('Log in'),
            ),
            LongButton(
              color: Colors.blueAccent,
              child: Text('Register'),
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(
                  context,
                  RegistrationScreen.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
