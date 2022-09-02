import 'package:flutter/material.dart';
import 'package:web_page/export.dart';
import 'package:web_page/ui/shared/logo.dart';
import 'package:web_page/ui/views/il_cielo/il_cielo.dart';

class NestedTabBar extends StatefulWidget {
  const NestedTabBar({Key? key}) : super(key: key);
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          tabs:  const [
            Logo(image: 'assets/logo/NaguaraA.png',),
            Logo(image: 'assets/logo/NaguaraG.png'),
            Logo(image: 'assets/logo/NaguaraC.png'),
            Logo(image: 'assets/logo/Central.png'),
            Logo(image: 'assets/logo/Nagura.png'),
            Logo(image: 'assets/logo/IlCielo.png'),
          ],
        ),
        Container(
          height: size.height * 0.8,
          margin: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.green,
                ),
                child: const NaguaraArepas(),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blue[400],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.yellow[300],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.purple[300],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.pink[300],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.green,
                ),
                child: const IlCielo(),
              ),
            ],
          ),
        )
      ],
    );
  }
}


