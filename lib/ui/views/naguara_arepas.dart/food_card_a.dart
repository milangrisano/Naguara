import 'package:flutter/material.dart';
import 'package:web_page/export.dart';


class FoodCardA extends StatelessWidget {
  final int index;
  const FoodCardA({
    Key? key, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arepa = arepas[index];
    final size = MediaQuery.of(context).size;
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      shadowColor: Colors.white,
      child: InkWell(
        splashColor: Colors.green[200],
        radius: 50,
        borderRadius: BorderRadius.circular(20),
        onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  PopDetailA(arepa: arepa,))),
        child: 
        (size.width < 540)
        ? Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          height: 180,
          width: double.infinity,
          child:Row(
            children:[ 
              FoodImage(arepa: arepa, flex: 2,),
              InfoContain(
                arepa: arepa,
                flex: 3,
                fontSizeName: 16,
                fontSizeDetail: 12,
              ),
            ]          
          ),
        )
        : (size.width < 1080)
        ? Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          height: 180,
          width: double.infinity,
          child:Row(
            children:[ 
              FoodImage(arepa: arepa, flex: 2,),
              InfoContain(
                arepa: arepa,
                flex: 4,
                fontSizeName: 18,
                fontSizeDetail: 14,
              ),
            ]          
          ),
        )
        : Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          height: 180,
          width: double.infinity,
          child:Row(
            children:[ 
              FoodImage(arepa: arepa, flex: 2,),
              InfoContain(
                arepa: arepa,
                flex: 6,
                fontSizeName: 22,
                fontSizeDetail: 18,
              ),
            ]          
          ),
        ),
      ),
    );
  }
}

class FoodImage extends StatelessWidget {
  const FoodImage({
    Key? key,
    required this.arepa,
    required this.flex,
  }) : super(key: key);

  final NaguaraArepasClass arepa;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Hero(
        tag: 'Image1',
        child: Container(
          height: 400,
          width: 200,
          decoration: BoxDecoration(
            // color: Colors.green,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(arepa.image),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}

class InfoContain extends StatelessWidget {
  const InfoContain({
    Key? key,
    required this.arepa,
    required this.flex,
    required this.fontSizeName,
    required this.fontSizeDetail,
  }) : super(key: key);

  final NaguaraArepasClass arepa;
  final int flex;
  final double fontSizeName;
  final double fontSizeDetail;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      flex: flex,
      child: Container(
        // color:  Colors.pink,
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            LettersBold(
              text: arepa.name,
              fontSize: fontSizeName,
            ),
            Container(
              // color: Colors.yellow,
              child: 
              (size.width < 540)
              ? LettersJustifyOverflow(
                text: arepa.detail,
                fontSize: fontSizeDetail,
                numLine: 5,
              )
              :(size.width < 720)
              ? LettersJustifyOverflow(
                text: arepa.detail,
                fontSize: fontSizeDetail,
                numLine: 6,
              ) 
              : LettersJustify(
                text: arepa.detail,
                fontSize: fontSizeDetail,
              ) 
            ),
            const Spacer(),
            Container(
              // color: Colors.pink,
              child: 
              (size.width > 500)
              ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Letters(text: arepa.price),
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
                  ),
                ],
              )
              : Container(
                alignment: Alignment.centerRight,
                // color: Colors.pink,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Letters(text: arepa.price),
                    ),
                    const SizedBox(height: 10),
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}