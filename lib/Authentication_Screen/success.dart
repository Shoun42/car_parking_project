import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

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
                    Image.asset("Assert/sucess.png"),
                    SizedBox(height: 25,),
                    Text("Thanks for signing up!",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white)),
                    Container(
                        width: 399,
                        child: Text("Welcome to our VIP ME application. Get ready for exclusive access to hassle-free car and truck parking!",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),)),
                    SizedBox(height: 20,),


                  ],
                ),
              ),

              InkWell(
                // onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>AuthValidationExample())),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}