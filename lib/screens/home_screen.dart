import 'package:flutter/material.dart';
import 'package:middterm_test/data/models/clothe_model.dart';
import 'package:middterm_test/data/models/dummy_data.dart';
import 'package:middterm_test/screens/add_clothe_screen.dart';
import 'package:middterm_test/screens/clothe_details.dart';
import 'package:middterm_test/screens/edit_clothe_screen.dart';
import 'package:middterm_test/widgets/item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Clothes> clothes = DUMMY_DATA;
    return Scaffold(
      appBar: AppBar(title: Text("Clothes App")),
      body: GridView.builder(

        itemBuilder: (ctx, index) {
          var clothe = clothes[index];
          return GestureDetector(
              onTap: () => Navigator.pushNamed(
                          context, ClotheDetailScreen.routeName,
                          arguments: clothe)
                      .then(
                    (value) {
                      setState(() {});
                    },
                  ),
              onLongPress: () {
                Navigator.pushNamed(context, ClotheEditScreen.routeName,
                        arguments: {"index": index, "clothe": clothe})
                    .then((value) => {setState((){})});
              },
              child: GridItem(
                  imageUrl: clothe.imageUrl,
                  name: clothe.name,
                  price: clothe.price.toString(),
                  description: clothe.description));
        },
        itemCount: clothes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 250),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddNewClothe.routeName).then((value) {
            setState(() {});
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
