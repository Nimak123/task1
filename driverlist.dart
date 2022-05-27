import 'package:flutter/material.dart';
import 'package:task1/adddriver.dart';
import 'package:task1/viewdriver.dart';

class Driverlist extends StatefulWidget {
  const Driverlist({Key? key}) : super(key: key);

  @override
  _DriverlistState createState() => _DriverlistState();
}

class _DriverlistState extends State<Driverlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff191919),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text("Driver List"),
        )
      ),
    body: SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text(
              "21 Drivers Found",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 20,),
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
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(
                           builder: (context) => ViewDriver()));
                     },
                      title: Text("Rohit sharma"),
                      leading:CircleAvatar(backgroundImage:AssetImage("assets/images/w1.png") ),
                      subtitle: Text("Licn no:PJ5151961616",
                        style: TextStyle(color: Colors.black,fontSize: 12),),
                      trailing:  ElevatedButton(child: Text("Delete"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,), onPressed: () {
                          showsanckbar(context, "Sucessfully Deleted");
                        },
                        //     ),
                        //   ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
                onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => AddDriver()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,),
                child:Text("Add Driver")),
          ),
          SizedBox(height: 20,)
        ],
      )
    ),);
  }
  void showsanckbar(BuildContext context,String msg)
  {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg),
          backgroundColor: Colors.blue,)
    );
  }
}
