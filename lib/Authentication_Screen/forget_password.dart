
import 'package:flutter/material.dart';

import 'reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {

    final form_key = GlobalKey<FormState>();
    // === Validation patterns ===
    final RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    return Scaffold(
      backgroundColor: Colors.indigo.shade700,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10),
              Form(
                key: form_key,
                child: Column(
                  children: [
                    Image.asset("Assert/forget.png"),
                    SizedBox(height: 10,),
                    Text("Forget Password",style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w600),),
                    SizedBox(height: 5,),
                    Text("Enter your email to reset your password",style: TextStyle(color:Colors.white,fontSize: 14,fontWeight: FontWeight.w400,),),
                    SizedBox(height: 10,),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        } else if (!emailRegexp.hasMatch(value)) {
                          return "Enter a valid email address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email,color: Colors.white,),
                        icon: Text("sourovchandra@gmail.com",style: TextStyle(color: Colors.white),),
                        suffixIcon: Icon(Icons.check_box,color: Colors.grey,),
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
                    SizedBox(height: 10),

                    SizedBox(height: 10),

                    SizedBox(height: 10),

                  ],
                ),
              ),

              InkWell(
                onTap: (){
                  if (form_key.currentState!.validate()) {
                    // সব কিছু valid হলে এখানে আসবে
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text("✅ All fields are valid!")));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
                  };
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "Get OTPs",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}