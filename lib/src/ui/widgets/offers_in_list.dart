import 'package:flutter/material.dart';

class SecondList extends StatefulWidget {
  const SecondList({Key? key}) : super(key: key);

  @override
  _SecondListState createState() => _SecondListState();
}

class _SecondListState extends State<SecondList> {
  buildItem(BuildContext context, int index) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: Padding(
        padding: const EdgeInsets.only(left: 2, right: 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            "assets/banner_one.png",
            height: MediaQuery.of(context).size.height / 4,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return buildItem(context, index);
          },
        ),
      ),
    );
  }
}
