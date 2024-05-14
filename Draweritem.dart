import 'package:flutter/material.dart';

class Draweritem extends StatelessWidget{
  final String name;
  final IconData icon;
  final Function() onPressed;

  const Draweritem({super.key, required this.name, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(icon ,
            size: 20,
              color: Colors.black,
            ),
            const SizedBox(
              height: 40,),
            Text(name,

              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}