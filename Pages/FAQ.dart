import 'package:flutter/material.dart';
class FAQ extends StatelessWidget{
  const FAQ ({Key? key} ): super(key : key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x99a5bde1),
        title:
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'FAQ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(

      ),
    );
  }
}