import 'package:flutter/material.dart';

class Bag extends StatefulWidget {
  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  int count=0;
  bool ispress=false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("𝕭𝖆𝖌",style: TextStyle( fontSize: 30,color: Colors.white),),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Container(
//          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/7,
              ),
              Container(
//        color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.deepOrange),
                    ),
//                color: Colors.white70,
                  elevation: 10,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: (){},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/2.5,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/2.5/1.6,
                              // Firebase code of showing data
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            Container(
//                            color: Colors.orange,
                              child: ListTile(
                                title: Text("Add new Address",style: TextStyle(color: Colors.blueAccent),),
                                subtitle: Text("You can add new Address",),
                                leading: IconButton(
                                  icon: Icon(Icons.add_circle_outline,size: 30,),
                                  onPressed: (){
                                    count++;
                                    if(count%2==0)
                                    {
                                      ispress=false;    // showing previous Address
                                    }else
                                      ispress=true;

                                    setState(() {
                                      _widget(ispress);
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              _widget(ispress),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _widget(bool ispress)
{

  print(ispress);
  if(ispress==true)
    return Button();
  return FORMS();
}

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button>  {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.white),
            ),
            onPressed: (){},
            child: const Text('👉🏻👉🏻 Continue to payment', style: TextStyle(fontSize: 18)),
            color: Colors.deepOrange,
            textColor: Colors.white,
            elevation: 5,
          ),
        ),
      ),
    );
  }
}


class FORMS extends StatefulWidget {
  @override
  _FORMSState createState() => _FORMSState();
}

class _FORMSState extends State<FORMS> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Recipient First Name'
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Recipient Last Name'
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Recipient Phone Number'
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'PIN Number'
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Address Line 1'
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Address Line 2'
                    ),
                  ),
                  SizedBox(height: 14,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white),
                        ),
                        color: Colors.deepOrange,
                        child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 20),),
                        onPressed: (){},
                      ),
                    ),
                  ),
//                            FlatButton(
//                                onPressed: (){},
//                                child: Text("Save",style:TextStyle(fontSize: 20),),
//                              color: Colors.deepOrange,
//                              textColor: Colors.white,
//                              shape: RoundedRectangleBorder(
//                                borderRadius: BorderRadius.circular(11),
//                              ),
//                            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
