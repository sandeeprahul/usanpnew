import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> with SingleTickerProviderStateMixin
{
late AnimationController _controller;

@override
void initState() {
  super.initState();
  _controller = AnimationController(vsync: this);
}

@override
void dispose() {
  _controller.dispose();
  super.dispose();
}


@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: SingleChildScrollView(
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors



            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.house_outlined,color:Colors.black, size: 75,),

                ],
              ),
            ),
            SizedBox(height: 50),



            Padding(
              padding: const EdgeInsets.only(right: 150, top:100),
              child: Text(
                'verify number',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
            SizedBox(height: 30,),




            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "please enter 6-digit code sent to your phone",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),

                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your phone number (770-890-8890). Didi't get it?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),

                  ),


                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: Text(
                    'Send again',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),

                  ))



                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(6,
                      (index) => SizedBox(
                    width: 46,
                    child: TextField(
                      cursorColor: Colors.blue,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.black,

                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )),
                          hintText: "0"
                      ),
                    ),
                  ),
                ),
              ),
            ),



            SizedBox( width: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text('continue'),
                  color: Colors.lightBlue,
                  textColor: Colors.white,

                ),
              ),
            ),

            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You will recieve one time verification code via",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),

                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "text message. Message and data rates may apply.",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),

                  ),


                ],
              ),
            ),
          ],


        ),

      ),


    ),

  );

}
}
