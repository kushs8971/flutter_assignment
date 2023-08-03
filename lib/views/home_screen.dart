import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String? validateMobile(String? value) {
    if(value == null){
      Container(
        child: Text("'Please enter a valid mobile number'"),
      );
    }
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(patttern);
    /*if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }*/
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Text("BlackCoffer",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: "SF Compact",
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("+91",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "SF Compact",
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: TextFormField(
                    maxLength: 10,
                    validator: validateMobile,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Enter Phone Number",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: "SF Compact",
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 60,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("SUBMIT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "SF Compact",
                  fontWeight: FontWeight.bold,
                ),

              ),
            ),
          ),
        ],
      ),
    ));
  }
}
