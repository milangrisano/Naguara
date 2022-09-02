import 'package:flutter/material.dart';
import 'package:web_page/export.dart';


class PopDetailIC extends StatelessWidget {
  final IlCieloClass pizza;
  const PopDetailIC({Key? key, required this.pizza}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // color: Colors.pink,
            child: Hero(
              tag: 'Image1',
              child: Image.asset(
                pizza.image,
                fit: BoxFit.cover,
              ),
            )
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: LettersBold(
              text: pizza.name,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            // color: Colors.yellow,
            child: LettersJustify(
              text: pizza.detail,
              fontSize: 18,
            )
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LettersBold(text: pizza.price),
                const SizedBox(width: 20),                    
                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.green,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),
                  child: const Letters(text: 'Ordenar'),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Cerrar',
        backgroundColor: Colors.green,
        elevation: 5,
        onPressed: () { Navigator.of(context).pop(); },
        child: const Icon(Icons.close),
      ),
    );
  }
}