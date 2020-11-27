import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQ"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.one_k),
                title: Text("What is Product key"),
              ),
              ListTile(
                leading: Icon(Icons.two_k),
                title: Text("Where do I find my Office"),
              ),
              ListTile(
                leading: Icon(Icons.three_k),
                title: Text("How long does it take to load"),
              ),
              ListTile(
                leading: Icon(Icons.four_k),
                title: Text("What happens after buy"),
              ),
              ListTile(
                leading: Icon(Icons.five_k),
                title: Text("I need more Information"),
              ),
              ListTile(
                leading: Icon(Icons.six_k),
                title: Text("Why should I choose you"),
              ),
              ListTile(
                leading: Icon(Icons.seven_k),
                title: Text("Are you able to do it ?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
