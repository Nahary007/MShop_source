import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projet/components/horizontal_listview.dart';
import 'package:projet/components/products.dart';
import 'package:projet/pages/cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    'images/images_autres/b1.jpg',
    'images/images_autres/banner.jpg',
    'images/images_autres/vet.jpg',
    'images/images_autres/short.jpg',
    'images/images_autres/image4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 250.0,
    child: CarouselSlider(
      items: imageList.map((imagePath) {
        return Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
        );
      }).toList(),
      options: CarouselOptions(
        height: 250.0,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
      ),
    ),
  );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('MShop'),
        actions: <Widget>[
          new IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
          new IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              icon: Icon(Icons.shopping_cart, color: Colors.white))
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text('Nahary GD'),
                accountEmail: Text('toavina@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My account"),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text("My orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categoris"),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),

          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}