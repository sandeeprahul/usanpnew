import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> with SingleTickerProviderStateMixin
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
              Icon(Icons.apple,color:Colors.black, size: 70,),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 30),
                child: Text(
                  'sign up',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText:'Name',
                            hintText: 'Enter name',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){
                          },
                          validator: (value){
                            return value!.isEmpty? 'please enter your email ': null;
                          },
                        ),
                      ),
                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText:'Email/phone',
                            hintText: 'Enter email',
                            prefixIcon: Icon(Icons.email_sharp),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'please enter password ' : null;
                          },
                        ),
                      ),
                      SizedBox(height: 20),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText:'password',
                            hintText: 'Enter password',
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'please enter password ' : null;
                          },
                        ),
                      ),
                      SizedBox(height: 20),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText:'password',
                            hintText: 'Conform password',
                            prefixIcon: Icon(Icons.lock_open),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'please enter password ' : null;
                          },
                        ),
                      ),
                      SizedBox(height:20),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              " *8 characters minimum ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              " *One Lowercase character ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              " *One Uppercase Character ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              " *One number ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold
                              ),

                            ),
                          ],
                        ),
                      ),


                      SizedBox(height: 10),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('login'),
                          color: Colors.lightBlue,
                          textColor: Colors.white,

                        ),
                      ),
                      SizedBox(height: 60),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.check_box),
                            Text(
                              " By checking up,you agree to the "
                                  "TERMS OF USE",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold
                              ),


                            ),
                          ],
                        ),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(" Already have an account? "),
                          TextButton(onPressed: (){}, child: const Text(
                            "Sign up",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                            ),

                          ))
                        ],
                      ),





                    ],
                  ),

                ),
              ),

            ],


          ),
        ),
      ),
    );
  }
}
