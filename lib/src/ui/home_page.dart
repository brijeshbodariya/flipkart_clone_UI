import 'package:ecommerce_ui/src/ui/body.dart';
import 'package:ecommerce_ui/src/ui/widgets/drawer_file.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'assets/flutter1.png',
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 4,
        ),
        actions: const <Widget>[
          Icon(
            Icons.notifications,
            size: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.shopping_cart,
              size: 20,
            ),
          )
        ],
      ),
      drawer: const Drawer(
        child: DrawerFile(),
      ),
      body: const Body(),
    );
  }
}
