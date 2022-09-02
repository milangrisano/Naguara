import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:web_page/export.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with TickerProviderStateMixin {
  late TabController _mainController;

  @override
  void initState() {
    super.initState();
    _mainController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _mainController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      // bottomNavigationBar: GNav(
      //   color: Colors.grey[400],
      //   activeColor: Colors.black,
      //   tabBackgroundColor: Colors.green.shade300,
      //   onTabChange: (index){_mainController;},
      //   tabs: const[
      //     GButton(icon: Icons.storefront_outlined, text: 'Nuestras Marcas',),
      //     GButton(icon: Icons.group_outlined, text: 'Nosotros',),
      //     GButton(icon: Icons.contact_phone, text: 'Contactanos',),
      //   ]         
      // ),
      bottomNavigationBar: Material(
        elevation: 5,
        color: Colors.green,
        child: TabBar(
          indicatorWeight: 5,
          controller: _mainController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey[400],
          tabs: const [
            Tab(text: 'Nuestras Marcas',),
            Tab(text: 'Nosotros',),
            Tab(text: 'Contactanos',),
          ],
        ),
      ),
      body: TabBarView(
        controller: _mainController,
        children: const [
          NestedTabBar(),
          Center(child: LettersBold(text: "Nosotros", fontSize: 30)),
          Center(child: LettersBold(text: "Contactanos", fontSize: 30)),
        ],
      ),
    );
  }
}