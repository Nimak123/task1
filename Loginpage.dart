import 'package:flutter/material.dart';
import 'package:task1/Adminpage.dart';
import 'package:task1/Validate.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  var lkey = new GlobalKey<FormState>();
  TextEditingController usernameinputcontroller = new TextEditingController();
  TextEditingController passwordinputcontroller = new TextEditingController();
  bool visible = true;
  var msg = "Invalid username or password";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: 190,
        title: Column(
          children: [
            SizedBox(height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 125, top: 40),
              child: Text("Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: "RobotoSlab-VariableFont_wght",
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 90, bottom: 30),
              child: Text("Manage your Bus and Drivers",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "RobotoSlab-VariableFont_wght",
                  )),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Form(
          key: lkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: usernameinputcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Color(0xffE5E5E5),
                      filled: true,
                      labelText: '                     Enter username',
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
                      return Validate.emailValidator(value!);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: passwordinputcontroller,
                    obscureText: visible,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Color(0xffE5E5E5),
                      filled: true,
                      labelText: '                    Enter Password',
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
                      return Validate.pwdvalidator(value!);
                    },
                  ),
                ),
                SizedBox(height: 140,),
                SizedBox(height: 140,),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        if (lkey.currentState!.validate()) {
                          if (usernameinputcontroller.text == "admin@gmail.com" &&
                              passwordinputcontroller.text == "admin123") {
                            Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context) => Adminpage()));
                          }
                          else
                            showsanckbar(context, msg);
                        }
                      },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,),
                        child:Text("Login")),
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
  void showsanckbar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        style: TextStyle(fontSize: 15),
      ),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 1),
    ));
  }
}
