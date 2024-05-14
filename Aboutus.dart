import 'package:flutter/material.dart';
class About extends StatelessWidget{
  const About ({Key? key} ): super(key : key);
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
            'About Us',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Container(
             height: 486,
               width: 333,
               child: Image.asset('images/aboutus.png'),
           ),
         ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: NetworkImage('https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/25343/humaaans-standing-11-clipart-md.png'),
                  width: 164,
                  height:246 ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}