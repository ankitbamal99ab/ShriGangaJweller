import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {

  bool ispress=false;
  int count=0;

  @override
  Widget _buildchild(bool choice)
  {
    if(choice==true)
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            children: [
              Text("Delivery Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(12.0),
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
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                width: 145,
                                height: 37,
                                child: RaisedButton(
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
              ),
            ],
          ),
        ),
      );
    else
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black12,
          ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Ankit Bamal\n8178368912\nVill+Post :- Hoshdar Pur Garhi\nDistt:- Hapur (UP)\n245201\nNationality:- Indian\nProud to be a JAAT\n ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
        ),
      );

  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("Delivery Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
//              visualDensity: VisualDensity(vertical: 5),
              subtitle: Text("+ Add new Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
              leading: IconButton(
                icon:Icon(Icons.add),
                onPressed: (){
                  count++;
                  if(count%2==0)
                  {
                    ispress=false;    // showing previous Address
                  }else
                    ispress=true;     // showing add new Address

                  setState(() {
                    _buildchild(ispress);
                  });
                },
              ),
            ),
          ),
//          Text("SJG",style:TextStyle(fontWeight: FontWeight.bold),),
          _buildchild(ispress),
        ],
      ),
    );
  }
}
