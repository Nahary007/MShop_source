import 'package:flutter/material.dart';
import 'package:projet/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  _ProductsStates createState() => _ProductsStates();
}

class _ProductsStates extends State<Products> {
  var product_list = [
    {
      "name" : "Laptop",
      "picture" : "images/images_autres/ordinateur.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name" : "Manette PS4",
      "picture" : "images/images_autres/vidgame.jpg",
      "old_price": 40,
      "price": 35,
    },
    {
      "name" : "Manette XBOX",
      "picture" : "images/images_autres/vidgame.webp",
      "old_price": 60,
      "price": 45,
    },
    {
      "name" : "Casque",
      "picture" : "images/images_autres/ga1.jpg",
      "old_price": 40,
      "price": 35,
    },
    {
      "name" : "Clavier",
      "picture" : "images/images_autres/ga2.jpg",
      "old_price": 70,
      "price": 60,
    },
    {
      "name" : "Souris",
      "picture" : "images/images_autres/ga3.jpg",
      "old_price": 40,
      "price": 25,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
                prod_name: product_list[index]['name'],
                prod_picture: product_list[index]['picture'],
                prod_old_price: product_list[index]['old_price'],
                prod_price: product_list[index]['price']
            ),
          );
        },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    Key? key,
    required this.prod_name,
    required this.prod_picture,
    required this.prod_old_price,
    required this.prod_price
}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new ProductDetails(
                  prod_detail_name: prod_name,
                  prod_detail_picture: prod_picture,
                  prod_detail_old_price: prod_old_price,
                  prod_detail_price: prod_price
              ))
            ),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: new Row(children: <Widget>[
                    Expanded(
                        child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)
                    ),
                    new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                  ],)
                ),
                child: Image.asset(prod_picture,
                fit: BoxFit.cover,),
              ),
            ),
          )
      ),
    );
  }
}