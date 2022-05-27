import 'package:flutter/material.dart';
import 'package:task1/Loginpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 250,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Icon(Icons.arrow_drop_down_outlined,size: 50,color: Colors.yellow,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        Text("moov",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w500),),
                        Text("be",style: TextStyle(color: Colors.yellow,fontSize: 50,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 290,),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => Loginpage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,),
                    child:Text("Get started",style: TextStyle(color: Colors.red),),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
