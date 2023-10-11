import 'package:app/view/screens/cartscreen/size_config.dart';
import 'package:flutter/material.dart';

class SplashContect extends StatelessWidget {
  const SplashContect({Key? key, this.text, this.image}) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Padding(
          padding:  const EdgeInsets.symmetric(vertical: 15, horizontal:15 ),
          child: Text(
            'Welcome',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
          child: Image.asset(
            image!,
            height: 250,
            width: 120,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
