import 'package:ecommerce_ui/src/ui/widgets/category.dart';
import 'package:ecommerce_ui/src/ui/widgets/deals.dart';
import 'package:ecommerce_ui/src/ui/widgets/deals_of_the_day.dart';
import 'package:ecommerce_ui/src/ui/widgets/dual_camera_phones.dart';
import 'package:ecommerce_ui/src/ui/widgets/featured_brand.dart';
import 'package:ecommerce_ui/src/ui/widgets/offers.dart';
import 'package:ecommerce_ui/src/ui/widgets/offers_in_list.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 11,
            color: const Color(0xff2874F0),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: InkWell(
                  child: Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Search for Products, Brands and More',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const FirstList(),
          const SecondList(),
          const ThirdList(),
          const FourthList(),
          const SizedBox(height: 5),
          const FifthList(),
          const SixthList(),
          const SeventhList(),
          const SizedBox(height: 5)
        ],
      ),
    );
  }
}
