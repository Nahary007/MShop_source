import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/image_maison/aspirateur.jpg',
            imageCaption: 'Aspirateur',
          ),
          Category(
            imageLocation: 'images/image_maison/balai1.jpg',
            imageCaption: 'Balai',
          ),
          Category(
            imageLocation: 'images/image_maison/canape.jpg',
            imageCaption: 'Canape',
          ),
          Category(
            imageLocation: 'images/image_maison/chaise1.jpg',
            imageCaption: 'Chaise',
          ),
          Category(
            imageLocation: 'images/image_maison/salon1.jpg',
            imageCaption: 'Salon',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Category({
    Key? key,
    required this.imageCaption,
    required this.imageLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imageLocation,
                  width: 80.0,
                  height: 70.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                imageCaption,
                style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}