import 'package:flutter/material.dart';
import 'package:middterm_test/data/models/clothe_model.dart';
import 'package:middterm_test/data/models/repository/clothe_helper.dart';

class ClotheDetailScreen extends StatelessWidget {
  static const routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final Clothes clothe = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(clothe.name),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ),
              onPressed: () {
                ClotheHelper.removeClothe(clothe.id);
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(60),
              child: Column(
                children: [
                  Image.network(clothe.imageUrl),
                  Container(
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Name: ",
                                      style: TextStyle(fontSize: 20),
                                    ))
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        child: Text(
                                      clothe.name,
                                      style: TextStyle(fontSize: 20),
                                    ))
                                  ],
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Price: ",
                                      style: TextStyle(fontSize: 20),
                                    ))
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        child: Text(
                                      clothe.price.toString(),
                                      style: TextStyle(fontSize: 20),
                                    ))
                                  ],
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        child: Text(
                                      "Size: ",
                                      style: TextStyle(fontSize: 20),
                                    ))
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        child: Text(
                                      clothe.size,
                                      style: TextStyle(fontSize: 20),
                                    ))
                                  ],
                                )
                              ],
                            )),
                        Text(clothe.description, style: TextStyle(fontSize: 20),)
                      ]))
                ],
              )),
        ));
  }
}
