import 'package:flutter/material.dart';

import 'Validate.dart';

class AddDriver extends StatefulWidget {
  const AddDriver({Key? key}) : super(key: key);

  @override
  _AddDriverState createState() => _AddDriverState();
}

class _AddDriverState extends State<AddDriver> {
  @override
  var akey = new GlobalKey<FormState>();
  TextEditingController nameinputcontroller = new TextEditingController();
  TextEditingController numberinputcontroller = new TextEditingController();
  bool visible = true;
  var msg = "Invalid username or password";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff191919),
          title: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text("Add Driver"),
          )
      ),
      body: SafeArea(
        child: Form(
          key: akey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: nameinputcontroller,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Color(0xffE5E5E5),
                      filled: true,
                      labelText: '                      Enter Name',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: Color(0xffE5E5E5),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: Color(0xffE5E5E5),
                          width: 2.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      return Validate.txtvalidator(value!);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: numberinputcontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Color(0xffE5E5E5),
                      filled: true,
                      labelText: '                 Enter License Number',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: Color(0xffE5E5E5),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: Color(0xffE5E5E5),
                          width: 2.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      return Validate.txtvalidator(value!);
                    },
                  ),
                ),
                SizedBox(height: 220,),
                SizedBox(height: 210,),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                      if(akey.currentState!.validate()){showsanckbar(context, "Saved");}
                      else {
                        showsanckbar(context, "Invalid");
                      }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,),
                      child:Text("Save")),
                ),
                SizedBox(
                  height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void showsanckbar(BuildContext context,String msg)
  {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg),
          backgroundColor: Colors.blue,)
    );
  }
}
