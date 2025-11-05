import 'package:flutter/material.dart';

class cart_products extends StatefulWidget {
  @override
  _cart_productsState createState() => _cart_productsState();
}

class _cart_productsState extends State<cart_products> {
  var products_on_the_cart = [
    {
      "name": "Laptop",
      "picture": "images/images_autres/ordinateur.jpg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Manette PS4",
      "picture": "images/images_autres/vidgame.jpg",
      "old_price": 75,
      "price": 50,
      "size": "7",
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products_on_the_cart.length,
      itemBuilder: (context, index) {
        return SingleCart_products(
          cart_prod_name: products_on_the_cart[index]["name"],
          cart_prod_picture: products_on_the_cart[index]["picture"],
          cart_prod_size: products_on_the_cart[index]["size"],
          cart_prod_price: products_on_the_cart[index]["price"],
          cart_prod_color: products_on_the_cart[index]["color"],
          cart_prod_qty: products_on_the_cart[index]["quantity"],
        );
      },
    );
  }
}

class SingleCart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_qty;

  SingleCart_products({
    Key? key,
    required this.cart_prod_name,
    required this.cart_prod_picture,
    required this.cart_prod_size,
    required this.cart_prod_price,
    required this.cart_prod_color,
    required this.cart_prod_qty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: ListTile(
          leading: Image.asset(
            cart_prod_picture,
            width: 65.0,
            height: 65.0,
            fit: BoxFit.cover,
          ),
          title: Text(
            cart_prod_name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "Size: ",
                      style: TextStyle(fontSize: 14.5),
                    ),
                    Text(
                      cart_prod_size,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 12.0),
                    Text(
                      "Color: ",
                      style: TextStyle(fontSize: 14.5),
                    ),
                    Text(
                      cart_prod_color,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.0),
                Text(
                  "\$${cart_prod_price}",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove, size: 22.0),
                padding: EdgeInsets.zero,
              ),
              Text(
                "$cart_prod_qty",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, size: 22.0),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
