import 'package:app/view/screens/cartscreen/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(0, 0, 39, 23);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

List<Widget> NavBar(context) {
  return [
    ElevatedButton(onPressed: () {}, 
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      shape: RoundedRectangleBorder(),
    ), 
    child: Text('Confirm',
    style: Theme.of(context).textTheme.headline3,),
    ),
  ];
}
