import 'package:flutter/material.dart';

import 'sing_up.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,
      ),
      backgroundColor: Colors.indigo.shade700,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10),
              Form(
                child: Column(
                  children: [
                    Image.asset("Assert/Reset password-cuate 1.png"),
                    SizedBox(height: 15,),
                    Text("Reset password",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white),),
                    SizedBox(height: 2,),
                    Text("Password must have 8 characters",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white),),
                    SizedBox(height: 15,),

                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email,color: Colors.white,),
                        icon: Text("New password",style: TextStyle(color: Colors.white),),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.white,),
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
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email,color: Colors.white,),
                        icon: Text("Confirm Password",style: TextStyle(color: Colors.white),),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.white,),
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

                  ],
                ),
              ),

              InkWell(
                onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> SingUp())),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "Update Password",
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
