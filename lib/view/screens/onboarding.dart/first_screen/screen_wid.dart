import 'package:app/view/screens/cartscreen/cart_card.dart';
import 'package:app/view/screens/cartscreen/cartscreen.dart';
import 'package:app/view/screens/cartscreen/size_config.dart';
import 'package:app/view/screens/constrains/constansts.dart';
import 'package:app/view/screens/onboarding.dart/first_screen/splash_con.dart';
import 'package:flutter/material.dart';

class FirstWid extends StatefulWidget {
  static String routeName = "/first";

  @override
  _FirstWidState createState() => _FirstWidState();
}

class _FirstWidState extends State<FirstWid> {
  int pagenum = 0;
  List<Map<String, String>> data = [
    {
      "text": "Welcome to app, Lets start",
      "image": "lib/assets/images/s1.png",
    },
    {
      "text": "Make orders easliy",
      "image": "lib/assets/images/s2.png",
    },
    {
      "text": "Discover app",
      "image": "lib/assets/images/s3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  pagenum = value;
                });
              },
              itemCount: data.length,
              itemBuilder: (context, index) => SplashContect(
                image: data[index]["image"],
                text: data[index]['text'],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:List.generate(
                        data.length,
                        (index) => AnimatedContainer(duration: kAnimationDuration,
                        margin: EdgeInsets.only(right: 5),
                        height: 6,
                        width: 6 ,
                        decoration: BoxDecoration(
                          color: pagenum == index
                                        ? Color.fromARGB(255, 11, 99, 84)
                                        : Color.fromARGB(255, 89, 248, 222),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        )
                        )
                    ),
                    Spacer(flex: 3,),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const CartScreen()),
                          ),
                        );
                      },
                      
                      child: 
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.40,
                        height: MediaQuery.sizeOf(context).width *0.09,
                        child:  Center(
                          child: Text(
                            'Start',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(155, 51, 187, 153)),
                    ),
                
                    Spacer(),
                  ],
                ),
              )
              )
        ]
        ),
      ),
    );
  }
}
