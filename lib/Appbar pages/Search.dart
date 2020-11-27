import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String>
{

  final jwellery=[
    "Rings",
    "Pendants",
    "Necklaces",
    "Bangles",
    "Mangal Sutra",
    "Bracelet",
    "Nobe pin",
    "Kadas",
    "Men's Jewellery",
    "Kid's jewellery",
    "Gold Coin",
    "Ear Rings",
    "Crowns",
    "Earrings",
    "Bangle",
    "Breastplate",
    "Anklet",

  ];

  final recentJewellery=["Rings",
    "Pendants",
    "Necklaces",
    "Bangles"];

  @override
  List<Widget> buildActions(BuildContext context) {

    return[
      IconButton(icon:Icon(Icons.clear), onPressed: (){
        query="";
      })];
    // TODO: implement buildActions
    // actions for app bar
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {

/*    return IconButton(icon: AnimatedIcon(
      icon:AnimatedIcons.menu_arrow,
//      progress: transitionAnimation,
        progress: transitionAnimation,
        semanticLabel: 'show menu',
    ),
        onPressed: (){
      close(context, null);
        });*/

    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
      close(context, null);
    });
    // TODO: implement buildLeading
    // leading icon on the left of the app bar
    throw UnimplementedError();
  }

//  @override
//  Animation<double> get transitionAnimation {
//
//  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults

    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    //     show when someone searches for something

    final suggestionList=query.isEmpty?recentJewellery:
    jwellery.where((p) => p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap: ()
      {},

      leading: Icon(Icons.near_me),
      title: RichText(
        text:TextSpan(
            text:suggestionList[index].substring(0,query.length),
            style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold
            ),
            children: [TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(color: Colors.grey),
            )]
        ),
      ),
    ),
      itemCount:suggestionList.length ,
    );

    throw UnimplementedError();
  }

}