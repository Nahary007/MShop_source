import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_old_price;
  final prod_detail_price;

  ProductDetails({
    Key? key,
    required this.prod_detail_name,
    required this.prod_detail_picture,
    required this.prod_detail_old_price,
    required this.prod_detail_price
  }) : super(key: key) ;

  @override
  _ProductDetailsStates createState() => _ProductDetailsStates();
}

class _ProductDetailsStates extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text("MShop"),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.white,)
          ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.prod_detail_picture),
                ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.prod_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: new Row(
                    children: <Widget>[
                      Expanded(child: new Text("\$${widget.prod_detail_old_price}",
                      style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)),
                      Expanded(child: new Text("\$${widget.prod_detail_price}",
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context, 
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                  )
              ),
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new AlertDialog(
                                title: new Text("Color"),
                                content: new Text("Choose a color"),
                                actions: <Widget>[
                                  new MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: new Text("Close"),
                                  )
                                ],
                              );
                            }
                        );
                      },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Color")),
                        Expanded(child: new Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("Quantity"),
                              content: new Text("Choose the quantity"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          }
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Qty")),
                        Expanded(child: new Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now"),
                  ),
              ),
                new IconButton(onPressed: () {} , icon: Icon(Icons.add_shopping_cart, color: Colors.blue,)),
                new IconButton(onPressed: () {} , icon: Icon(Icons.favorite_border, color: Colors.blue,))
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Nullam ultrices tincidunt aliquet. Nulla eget dictum libero, nec cursus tellus. Duis eu congue ante. Ut vehicula viverra erat, a interdum erat blandit sed. Mauris egestas non ante a molestie.ique fue, koziko i ando, bateli, rantinkam kam du dud du ud."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.prod_detail_name),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),)
            ],
          ),
          Divider(),
          Padding(padding: const EdgeInsets.all(8.0), child: new Text("Similar Products"),),
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
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
        return SimilarSingle_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price']
        );
      },
    );
  }
}

class SimilarSingle_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  SimilarSingle_prod({
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