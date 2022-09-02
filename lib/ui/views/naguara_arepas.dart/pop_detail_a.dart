import 'package:flutter/material.dart';
import 'package:web_page/export.dart';


class PopDetailA extends StatelessWidget {
  final NaguaraArepasClass arepa;
  const PopDetailA({Key? key, required this.arepa}) : super(key: key);

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
                arepa.image,
                fit: BoxFit.cover,
              ),
            )
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: LettersBold(
              text: arepa.name,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            // color: Colors.yellow,
            child: LettersJustify(
              text: arepa.detail,
              fontSize: 18,
            )
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LettersBold(text: arepa.price),
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