import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:usnap/SignupScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
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
              Icon(Icons.apple,color:Colors.black, size: 80,),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 30),
                child: Text(
                  'Login with',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.apple,color:Colors.black, size: 50,),
                  Icon(Icons.facebook,color:Colors.blue, size: 50,),
                  Icon(Icons.hiking_outlined,color:Colors.black, size: 50,),
                ],
              ),
              SizedBox(height: 30),

              Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text(
                'or',

                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText:'Email/phone',
                            hintText: 'Enter email or phone',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (String value){
                          },
                          validator: (value){
                            return value!.isEmpty? 'please enter your email ': null;
                          },
                        ),
                      ),
    SizedBox(height: 30,),

    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
      labelText:'password',
      hintText: 'Enter password',
      prefixIcon: Icon(Icons.password),
      border: OutlineInputBorder(),
      ),
      onChanged: (String value){
      },
      validator: (value) {
          return value!.isEmpty ? 'please enter password ' : null;
      },
                    ),
    ),
                      SizedBox(height: 40),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: (){}, child: const Text(
                            "Forget password?",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),

                          ))
                        ],
                      ),

                      SizedBox(height: 30),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55),
                        child: MaterialButton(
                          onPressed: (){},
                          child: Text('login'),
                          color: Colors.lightBlue,
                          textColor: Colors.white,

                        ),
                      ),
                      SizedBox(height: 90),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("don't have an account? "),
                          TextButton(onPressed: (){
                            Get.to(SignupScreen);
                          }, child: const Text(
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
    ],
    ),
        ),
        ),
      );
  }
}
