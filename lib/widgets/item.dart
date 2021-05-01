import 'package:flutter/material.dart';
import 'package:middterm_test/data/models/clothe_model.dart';

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String description;

  GridItem({this.imageUrl, this.name, this.price, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(

            children: [

              Container(
                child: FadeInImage(
                  height: 160,
                  fit: BoxFit.cover,
                  placeholder: AssetImage(
                      "assets/images/clothes_placeholder.png"),
                  image: NetworkImage(imageUrl),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(description)
                ],
              )


            ],
          ),
        )
    );
  }
}
