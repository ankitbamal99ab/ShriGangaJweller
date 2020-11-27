import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shrigangaj/pages/practice.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  bool ispress=true;
  int count=0;
  Widget _build(bool choice)
  {
    if(choice)
    {
      return Container(

      );
    }
    return Container(
      child: Column(
        children: [
          Text("Yes This is my All Orders"),
          SizedBox(height: 4,),
         ProductDisplayGrid(),
          ProductDisplayGrid(),
          ProductDisplayGrid(),ProductDisplayGrid(),
         /* Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange
            ),
            width: double.infinity,
            height: 140,
            child: Center(child: Text("GOLD RING")),
          ),
          SizedBox(height: 0.5,),
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
            ),
            width: double.infinity,
            height: 140,
            child: Center(child: Text("Necklace")),
          ),
          SizedBox(height: 0.5,),
          Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange
            ),
            width: double.infinity,
            height: 140,
            child: Center(child: Text("Ear Ring")),
          ),
          SizedBox(
            height: 0.5,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange
            ),
            width: double.infinity,
            height: 140,
            child: Center(child: Text("Jwellery")),
          ),
          SizedBox(height: 0.5,),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            width: double.infinity,
            height: 140,
            child: Center(child: Text("Ankle")),
          ),
          SizedBox(height: 0.5,),
          Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange
            ),
            width: double.infinity,
            height: 140,
            child: Center(child: Text("Nose Pin")),
          ),*/
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("My Orders",style: TextStyle(color:Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
            ),
          ),
          FlatButton(
            onPressed: (){
              count++;
              if(count%2==0)
                ispress=false;
              else
                ispress=true;

              setState(() {
                _build(ispress);
              });
            },
            child: Text("See All Orders",style:TextStyle(fontSize: 20),),
            color: Colors.deepOrange,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            ),
          ),
          _build(ispress),
        ],
      ),
    );
  }
}
