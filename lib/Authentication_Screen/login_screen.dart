import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade700,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20,),
            Form(

              child: Column(
                children: [

                  Image.asset("logo.png"),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "sagor@gmail.com",
                      suffixIcon: Icon(Icons.check_box),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.indigo,
                          width: 2,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: "password",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white60,
                          width: 100,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),

                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forget Password",style: TextStyle(color: Colors.white),),
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have accound?",style: TextStyle(color:Colors.white),),
                Text("Sign Up",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
