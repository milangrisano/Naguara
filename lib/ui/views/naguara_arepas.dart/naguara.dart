import 'package:flutter/material.dart';
import 'package:web_page/export.dart';


class NaguaraArepas extends StatelessWidget {
  const NaguaraArepas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: arepas.length,
      itemBuilder: (BuildContext context, int index) { 
        return  FoodCardA(index: index);
      },      
    );      
  }
}