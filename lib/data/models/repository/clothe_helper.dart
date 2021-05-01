import 'package:middterm_test/data/models/clothe_model.dart';
import 'package:middterm_test/data/models/dummy_data.dart';

class ClotheHelper{
  static void addCloth(Clothes clothes){
    DUMMY_DATA.add(clothes);
  }

  static void removeClothe(int id){
    DUMMY_DATA.removeWhere((element) => element.id == id);
  }

  static void editMovie(Clothes clothes, int index){
    DUMMY_DATA.replaceRange(index, index + 1, [clothes]);
  }
}