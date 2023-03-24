import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:usnap/VerifyScreen.dart';
import 'package:get/get.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin
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
padding: const EdgeInsets.only(left: 10,top:100),
child: Text(
'Welcome to U-Snap!',
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
Icon(Icons.house_outlined,color:Colors.black, size: 300,),

],
),
SizedBox(height: 30),




Padding(
padding: const EdgeInsets.symmetric(horizontal: 30),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
"Need help around the house?",
style: TextStyle(
color: Colors.black87,
fontWeight: FontWeight.bold,
fontSize: 25,
),

),
],
),
),
SizedBox(height: 50,),



Padding(
padding: const EdgeInsets.symmetric(horizontal: 30),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
"Our professionals(or pros) are here to help",
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
fontStyle: FontStyle.italic,
),

),
],
),
),

SizedBox(height: 100),



Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.end,
children: [
TextButton(onPressed: (){}, child:  Text(
'Skip',
style: TextStyle(
color: Colors.black54,
fontSize: 20,
fontWeight: FontWeight.bold
),

)),


TextButton(onPressed: (){
  Get.to(VerifyScreen());
}, child: Text(
'Next',
style: TextStyle(
color: Colors.black,
fontSize: 20,
fontWeight: FontWeight.bold
),

))
],
),





],


),

),


),

);

}
}
