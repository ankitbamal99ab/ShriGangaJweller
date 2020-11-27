
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
//          Text("Account & Setting",),
          SingleChildScrollView(
            child: Card(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              elevation: 10,
              shadowColor: Colors.white,
              child: Column(
                children: [
                  Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.center,
                    children: [
                      Image(
                        width: double.infinity,
                        height:MediaQuery.of(context).size.height/3,
                        fit: BoxFit.cover,
                        image: NetworkImage("https://scontent.fdel25-1.fna.fbcdn.net/v/t1.0-9/p720x720/79603312_2207334646242913_7009164242255347712_o.jpg?_nc_cat=109&ccb=2&_nc_sid=e3f864&_nc_ohc=QzEyBNyPpuEAX9YJotd&_nc_ht=scontent.fdel25-1.fna&tp=6&oh=d86765f5cc23059e28131bea229e86b6&oe=5FCDA703"),
                      ),
                      Positioned(
                          bottom: -60.0,
                          child: CircleAvatar(
                            radius: 80,backgroundColor: Colors.white,
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS8jrR7wnoOAcEHHwmUfxHefefAfg7pBc6Y_g&usqp=CAU"),

                          ))
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    title: Center(child: Text(" Er. Ankit Bamal",style: TextStyle(fontWeight: FontWeight.bold),)),
                    subtitle: Center(child: Text("ankitbamal99ab@gmail.com",style: TextStyle(color: Color(0xFF0B0086)),)),
                  ),
                  ListTile(
                    title: Text("Contact Details",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4,0,0,2),
                    child: Align(
                      alignment: Alignment(-0.91,0),
                      child: Container(
                        child: Column(
                          children: [
                            Text(" Contact:        8178368912",style: TextStyle(fontSize: 16),),
                            SizedBox(height: 5,),
                            Text("DOB:             15/01/1999",style: TextStyle(fontSize: 16),),
                            SizedBox(height: 5,),
                            Text("Joined:          20/03/2020",style: TextStyle(fontSize: 16),),
                            SizedBox(height: 8,),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        SizedBox(height: 30,),
        Center(child: Text("Shri Ganga Jweller",style: TextStyle(fontWeight: FontWeight.bold),)),
        SizedBox(height: 10,),    //  make this row and social ICON
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height/5,
          color: Colors.black12,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: FlatButton.icon(
//                        onPressed: (){},
                        icon: Icon(Icons.refresh,color: Colors.black,size: 40,),label: Text("Easy\nReturn ",style: TextStyle(color: Color(0xFF0B0086),fontWeight: FontWeight.bold,fontSize: 16),),
//
                    ),
                    color: Colors.black12,
                    width: MediaQuery.of(context).size.width/2,
                     height: MediaQuery.of(context).size.height/5*(1/2),
//                    height: double.infinity,
                  ),
                  Container(
                    child: FlatButton.icon(
//                        onPressed: (){},
                      icon: Icon(Icons.swap_horiz,color: Colors.black,size: 40,),label: Text("Easy\nExchange",style: TextStyle(color: Color(0xFF0B0086),fontWeight: FontWeight.bold,fontSize: 16),),
//
                    ),
                    color: Colors.black12,
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/5*(1/2),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    child: FlatButton.icon(
//                        onPressed: (){},
                      icon: Icon(Icons.star,color: Colors.black,size: 40,),label: Text("Certified\n Jwellery ",style: TextStyle(color: Color(0xFF0B0086),fontWeight: FontWeight.bold,fontSize: 16),),
//
                    ),
                    color: Colors.black12,
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/5*(1/2),
                  ),
                  Container(
                    child: FlatButton.icon(
//                        onPressed: (){},
                      icon: Icon(Icons.directions_car,color: Colors.black,size: 40,),label: Text("Secured\ndelivery  ",style: TextStyle(color: Color(0xFF0B0086),fontWeight: FontWeight.bold,fontSize: 16),),
//
                    ),
                    color: Colors.black12,
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/5*(1/2),
                  )
                ],
              ),
            ],
          ),
        ),
//          SizedBox(height: 20,)
        ],
      ),
    );
  }
}



















// Rough Work

/*
StreamBuilder(
stream: Firestore.instance.collection('cars').snapshots(),
builder: (BuildContext context ,AsyncSnapshot<QuerySnapshot> snapshot){
if(!snapshot.hasData)
{
return Center(
child:CircularProgressIndicator() ,
);
}
return ListView(
children: snapshot.data.documents.map((document) {
return Center(
child: Container(
width: MediaQuery.of(context).size.width / 1.2,
height: MediaQuery.of(context).size.height / 6,
child: Text("Title: " + document['brandname'],style: TextStyle(color: Colors.black,fontSize: 15),),
),
);
}).toList(),
);
},
),*/

//  for Image -headImageAssetPath : snapshot.data.documents.map()(['url'],)

/*


  Widget _buildList(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      title: Text(document['brandname']),
      subtitle: Text(document['sold']),
    );
  }


StreamBuilder(
                stream: Firestore.instance.collection('cars').snapshots(),
                builder: (context,snapshot){
                if(!snapshot.hasData)
                  return Text("Loading data....");
                return ListView.builder(
                  itemCount: snapshot.data.length,
                    itemExtent: 30,
                    itemBuilder: (context,index)
                    {
                      return _buildList(context, snapshot.data.documents[index]);
                    });
                },
              ),
* */