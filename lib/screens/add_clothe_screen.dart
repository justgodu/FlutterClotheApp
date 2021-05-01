import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:middterm_test/data/models/clothe_model.dart';
import 'package:middterm_test/data/models/repository/clothe_helper.dart';

class AddNewClothe extends StatelessWidget {
  static const routeName = "/add-new-clothe";
  final _formKey = GlobalKey<FormState>();
  TextEditingController clotheID = TextEditingController();
  TextEditingController clotheName = TextEditingController();
  TextEditingController clotheDescription = TextEditingController();
  TextEditingController clothePrice = TextEditingController();
  TextEditingController clotheSize = TextEditingController();
  TextEditingController clotheImageURL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Card(
                    child: TextFormField(
                  controller: clotheID,
                  decoration:
                      InputDecoration(hintText: "Please Enter Clothe ID"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter valid ID";
                    }
                    return null;
                  },
                )),
                Card(
                    child: TextFormField(
                  controller: clotheName,
                  decoration:
                      InputDecoration(hintText: "Please Enter Clothe Name"),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter valid Name";
                    }
                    return null;
                  },
                )),
                Card(
                    child: TextFormField(
                  controller: clotheDescription,
                  decoration: InputDecoration(
                      hintText: "Please Enter Clothe Description"),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter valid ID";
                    }
                    return null;
                  },
                )),
                Card(
                    child: TextFormField(
                  controller: clothePrice,
                  decoration:
                      InputDecoration(hintText: "Please Enter Clothe Price"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter valid Price";
                    }
                    return null;
                  },
                )),
                Card(
                    child: TextFormField(
                  controller: clotheSize,
                  decoration:
                      InputDecoration(hintText: "Please Enter Clothe Size"),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter valid Size";
                    }
                    return null;
                  },
                )),
                Card(
                    child: TextFormField(
                  controller: clotheImageURL,
                  decoration: InputDecoration(
                      hintText: "Please Enter Clothe Image Url"),
                  keyboardType: TextInputType.url,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter valid URL";
                    }
                    return null;
                  },
                )),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {Navigator.pop(context);},
                        child: Text("Back")),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Clothes clothe = Clothes(
                                id: int.parse(clotheID.text),
                                name: clotheName.text,
                                description: clotheDescription.text,
                                price: double.parse(clothePrice.text),
                                size: clotheSize.text,
                                imageUrl: clotheImageURL.text);
                            ClotheHelper.addCloth(clothe);
                            Navigator.pop(context);
                          }

                        },
                        child: Text("Add"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
