import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shrigangaj/Appbar%20pages/Favourite.dart';
import 'package:shrigangaj/FAQ.dart';
import 'package:shrigangaj/main.dart';
import 'package:shrigangaj/pages/Account.dart';
import 'package:shrigangaj/pages/Address.dart';
import 'package:shrigangaj/pages/MyOrder.dart';
import 'package:shrigangaj/pages/Offer.dart';

import 'Appbar pages/Bag.dart';
import 'Appbar pages/Search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  PageController _pageController=PageController();
  List<Widget> _screens=[
    Account(),Address(),Offer(),MyOrder(),
  ];

  int _selectedindex=0;

void _onPageChanged(int index)
{
setState(() {
_selectedindex=index;
});
}

  void _itemTapped(int selectedIndex)
  {
    _pageController.jumpToPage(selectedIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Text("Drawer Header"),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text("FAQ"),
              subtitle: Text("Resolve your queries"),
              leading: Icon(Icons.assignment_late),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FAQ()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor:Colors.green,
        title: Text("Shree Ganga ji",style: TextStyle(color: Color(0xFF0B0086),fontSize: 20 ),),
        actions: [
          IconButton(
              icon:
              Icon(Icons.search),
              color: Colors.black,
              onPressed: (){
                //Search
//                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Search()));
              showSearch(
                context:context,delegate: DataSearch()
              );
              }),
          IconButton(icon: Icon(Icons.favorite,color: Colors.black,), onPressed: (){
            // favorite
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Favourite()));
          }),
          IconButton(icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Bag()));
          }),
        ],
      ),
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar:  CurvedNavigationBar(
        onTap: _itemTapped,
        backgroundColor: Color(0xFF0B0086),
        height: 60,
        items: [
          Icon(Icons.person, size: 30,color: Color(0xFF0B0086),),
          Icon(Icons.home, size: 30,color: Color(0xFF0B0086)),
          Icon(Icons.favorite, size: 30,color: Color(0xFF0B0086)),
          Icon(Icons.bookmark_border, size: 30,color: Color(0xFF0B0086)),
        ],
      ),
    );
  }
}




// Search Functionality
