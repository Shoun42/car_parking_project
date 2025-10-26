import 'package:car_parking_project/Authentication_Screen/reset_password.dart';
import 'package:flutter/material.dart';

import 'forget_password_otp.dart';

class ForgetEmail extends StatelessWidget {
  const ForgetEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,
      ),
      backgroundColor: Colors.indigo.shade700,
      body: Center(
        child: Padding(padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10,),
              Form(child: Column(
                children: [
                  Image.asset("assets/forget_.png"),
                  SizedBox(height: 10,),
                  Text("Forget Password", style: TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.w600 ),),
                  SizedBox(height: 5,),
                  Text("Enter your email to reset your password", style: TextStyle(color: Colors.white,fontSize:14, fontWeight: FontWeight.w400,),),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.white,),
                      icon: Text("Enter your email", style: TextStyle(color: Colors.white,fontSize: 14, fontWeight: FontWeight.w400),),
                      suffixIcon: Icon(Icons.check_box, color: Colors.grey ,),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=> ForgetPassword ()));
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text("Get OTP",
                      style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}