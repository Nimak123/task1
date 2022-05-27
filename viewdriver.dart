import 'package:flutter/material.dart';

class ViewDriver extends StatefulWidget {
  const ViewDriver({Key? key}) : super(key: key);

  @override
  _ViewDriverState createState() => _ViewDriverState();
}

class _ViewDriverState extends State<ViewDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff191919),
          title: Text("KSRTC Swift Scania P-series")
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 600,
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xff191919)),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Text("Rohith sharma",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "RobotoSlab-VariableFont_wght",
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Text("Licn no:PJ5151961616",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/driver1.png")
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 440,
              width: 280,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 200,),
                      Icon(Icons.event_seat_rounded,color: Colors.black,size: 30,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      SizedBox(width: 60,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                      Icon(Icons.event_seat_rounded,color: Colors.red,size: 30,),
                    ],
                  ),

                  SizedBox(height: 10,),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
