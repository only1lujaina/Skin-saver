import 'package:flutter/material.dart';
class Signin extends StatelessWidget
{
  bool? isChecked = false;
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
              SizedBox(
                height: 90.0,
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
                height: 50.0,
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
              Container(
                height: 40,
                width: double.infinity,
                color: Color(0xffa5bde1),
                child: MaterialButton(onPressed: (){
                  print(emailController);
                  print(passwordController);
                },
                  child: Text('Sign in'),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot your Password'),
                  TextButton(
                      onPressed : (){}, child: Text(
                      'Resest Password'
                  ))
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Remember me'),
                  ColoredBox(
                    color: Colors.lightBlue,
                    child: Material(
                      child: CheckboxListTile(
                        tileColor: Colors.black,
                        title: const Text('Remember me'),
                        value: true,
                        onChanged:(bool? value) { },
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}