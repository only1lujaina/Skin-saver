import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile ({Key? key} ): super(key : key);
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar:AppBar(),

         body :Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'
                  ),
                ),
                SizedBox(width: 20.0),
                Text(
                  'Muhammad',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height:53 ,
              width: 300,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(

                  backgroundColor: Color(0x99a5bde1) ,
                ),
                onPressed: () {},
                child: const Text(
                  'Tap to Change Your Email',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),

            SizedBox(height: 25.0),
            SizedBox(
              height: 53,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0x99a5bde1) ,
                ),
                onPressed: () {},
                child: const Text(
                  'Tap to Change Password',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
         ),
      );
  }
}
