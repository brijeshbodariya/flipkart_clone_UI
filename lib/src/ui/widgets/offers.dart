import 'package:flutter/material.dart';

class ThirdList extends StatefulWidget {
  const ThirdList({Key? key}) : super(key: key);

  @override
  _ThirdListState createState() => _ThirdListState();
}

class _ThirdListState extends State<ThirdList> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 5,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset("assets/telivision.png"),
          ),
          Expanded(
            child: Image.asset("assets/running.png"),
          ),
          Expanded(
            child: Image.asset("assets/mobile_top.png"),
          ),
        ],
      ),
    );
  }
}
