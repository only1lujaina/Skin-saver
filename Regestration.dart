import 'package:flutter/material.dart';

class Login extends StatelessWidget
{
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your Name' ,
                  fillColor: Color.fromRGBO(165,189,225,38) ,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Mobile',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextFormField(
                controller: mobileController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your Mobile' ,
                  fillColor: Color.fromRGBO(165,189,225,38) ,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your Email' ,
                  fillColor: Color.fromRGBO(165,189,225,38) ,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined
                  ) ,
                  hintText: 'Enter your Password' ,
                  fillColor: Color.fromRGBO(165,189,225,38) ,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Confirm your Password' ,
                  fillColor: Color.fromRGBO(165,189,225,38) ,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Color(0xffa5bde1),
                child: MaterialButton(onPressed: (){
                  print(nameController);
                  print(mobileController);
                  print(emailController);
                  print(passwordController);
                },
                  child: Text('Sign up'),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have an account ?'),
                  TextButton(
                      onPressed : (){}, child: Text(
                    'Sign in'
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
