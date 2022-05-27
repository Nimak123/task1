import 'package:flutter/material.dart';
import 'package:task1/driverlist.dart';

class Adminpage extends StatefulWidget {
  const Adminpage({Key? key}) : super(key: key);

  @override
  _AdminpageState createState() => _AdminpageState();
}

class _AdminpageState extends State<Adminpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          backgroundColor: Color(0xff191919),
          title:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Icon(Icons.arrow_drop_down_outlined,size: 25,color: Colors.yellow,),
              ),
              Row(
                children: [
                  SizedBox(width: 100,),
                  Text("moov",style: TextStyle(color: Colors.white,fontSize: 30),),
                  Text("be",style: TextStyle(color: Colors.yellow,fontSize: 30,),),
                  ],
              ),
            ],
          ),
        ),
        body: SafeArea(
              child: Column(children: [
          SizedBox(
              height: 10,
          ),
          Container(
              height: 210,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.red),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 110),
                                child: Text("Bus",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "RobotoSlab-VariableFont_wght",
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text("Manage your Bus",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/bus1.png")),
                            ],
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>Driverlist()));

                          },
                          child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Color(0xff191919)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 90),
                                  child: Text("Driver",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "RobotoSlab-VariableFont_wght",
                                      )),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text("Manage your Driver",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      )),
                                ),
                                SizedBox(
                                  height: 7.13,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset("assets/images/driver1.png")),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
          ),
          SizedBox(
              height: 10,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                "21 Buses Found",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
          ),
          SizedBox(
              height: 10,
          ),
              Expanded(
                child: ListView.builder(
                   itemCount: 5,
                  itemBuilder: (BuildContext context,int index) {
                    return Card(
                      elevation: 4.0,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Expanded(
                        flex: 2,
                        child: ListTile(
                          leading: Image.asset("assets/images/bus2.png"),
                          title: Text("KSRTC"),
                          subtitle: Text("Swift Scania P-series",
                            style: TextStyle(color: Colors.black,fontSize: 12),),
                          trailing:  ElevatedButton(child: Text("Manage"),
                            style: ElevatedButton.styleFrom(
                            primary: Colors.red,), onPressed: () {},
                            //     ),
                            //   ),
                        ),
                      ),
                      ),

                    );
                  },
                ),
              ),
        ]),
            ));
  }
}
