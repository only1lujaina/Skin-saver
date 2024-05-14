import 'package:flutter/material.dart';
import 'package:graduation_project/Aboutus.dart';
import 'package:graduation_project/Draweritem.dart';
import 'package:graduation_project/Pages/Contactus.dart';
import 'Pages/Doctors.dart';
import 'Pages/FAQ.dart';
class Sidebar extends StatelessWidget{
  const Sidebar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return  Drawer(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Draweritem(
                name: 'Doctors and clincs',
                icon: Icons.people_alt,
                onPressed: ()=> onItemPressed(context ,index : 0),
              ),
              SizedBox(
                height: 30,
              ),
              Draweritem(
                name: 'Contact us',
                icon: Icons.call,
                onPressed: ()=> onItemPressed(context ,index : 1),
              ),
              SizedBox(
                height: 30,
              ),
              Draweritem(
                name: 'About us',
                icon: Icons.info_outline,
                onPressed: ()=> onItemPressed(context ,index : 2),
              ),
              SizedBox(
                height: 30,
              ),
              Draweritem(
                name: 'FAQ',
                icon: Icons.question_answer_outlined,
                onPressed: ()=> onItemPressed(context ,index : 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void onItemPressed (BuildContext context, {required int index}){
    Navigator.pop(context);
    switch(index){
      case 0 :
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Doctors()));
      case 1 :
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Contact()));
      case 2 :
        Navigator.push(context, MaterialPageRoute(builder: (context) => const About()));
      case 3 :
        Navigator.push(context, MaterialPageRoute(builder: (context) => const FAQ()));

    }
  }
}