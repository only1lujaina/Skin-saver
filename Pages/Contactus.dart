import 'package:flutter/material.dart';
class Contact extends StatelessWidget{
  const Contact ({Key? key} ): super(key : key);
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
            'Contact Us',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10
              ,),
            TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
              decoration: InputDecoration(
                constraints: const BoxConstraints.expand(
                  height: 35, width: 400,
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10
              ,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
              decoration: InputDecoration(
                constraints: const BoxConstraints.expand(
                  height: 35, width: 400,
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Message',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10
              ,),
            TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
              decoration: InputDecoration(
                constraints: const BoxConstraints.expand(
                  height: 100, width: 400,
                ),
                contentPadding: EdgeInsets.fromLTRB(10, 10,10, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0x99a5bde1) ,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Send',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}