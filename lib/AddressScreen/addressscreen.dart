import 'package:assignmentoyelabs/AddressScreen/button2.dart';
import 'package:assignmentoyelabs/SignUpScreen/widgets/Buttons.dart';
import 'package:flutter/material.dart';


class Locationpage extends StatefulWidget {
  const Locationpage({ Key? key }) : super(key: key);

  @override
  _LocationpageState createState() => _LocationpageState();
}

class _LocationpageState extends State<Locationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 155,),
          Text('Hey, nice to meet you!',style: TextStyle(color: Color(0xFF8E8E8E),fontFamily: 'Raleway',fontSize: 16,fontWeight: FontWeight.w500),),
          SizedBox(height: 22,),
          Text('See services around',style: TextStyle(color: Colors.black,fontFamily: 'Inter',fontSize: 28,fontWeight: FontWeight.w600),),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset('assets/location.png'),
                ),
                const Padding(padding: EdgeInsets.all(22)),
                 Padding(
                   padding: const EdgeInsets.only(left: 15,right: 17),
                   child: LocationButton(function: (){}, imgPath: 'assets/Vector.svg', text: 'Your current location',buttonColor: Colors.black,)
                 ),
                 Padding(padding: EdgeInsets.all(10)),
               Padding(
                 padding: const EdgeInsets.only(left:38.0,right: 38),
                 child: TextField(
                   textAlign: TextAlign.center,
  decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      filled: true,
      hintStyle: TextStyle(color: Color(0xFFA1A4B2),fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.w500),
      hintText: "Some other location",
      fillColor: Colors.white70,
      prefixIcon: Icon(Icons.search,color: Color(0xFFA1A4B2),),
      
      ),

),
               )
              ],
            ),
          )
        ],
      ),
      
    );
  }
}