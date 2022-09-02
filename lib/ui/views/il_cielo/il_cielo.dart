import 'package:flutter/material.dart';
import 'package:web_page/export.dart';



class IlCielo extends StatelessWidget {
  const IlCielo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pizzas.length,
      itemBuilder: (BuildContext context, int index) { 
        return  FoodCardIC(index: index);
      },      
    );      
  }
}