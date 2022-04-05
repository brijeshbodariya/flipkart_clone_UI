import 'package:flutter/material.dart';

class DrawerFile extends StatefulWidget {
  const DrawerFile({Key? key}) : super(key: key);

  @override
  _DrawerFileState createState() => _DrawerFileState();
}

class _DrawerFileState extends State<DrawerFile> {
  List<DrawerItemModel> drawerItemModel = <DrawerItemModel>[];

  @override
  void initState() {
    super.initState();
    addDrawerItem();
  }

  addDrawerItem() {
    drawerItemModel.add(DrawerItemModel("Flutter Devs Plus Zone",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/11/07/2018/70e5346e-fce4-4718-8e56-27be8492faa5.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Electronics",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/31/10/2016/f7634981-4fd5-4127-9b93-9f57606dccd3.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Fashion",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/30/10/2016/39d573db-dd62-430a-8166-0dcc53b6f299.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Home and Furniture",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/30/10/2016/6e4fe892-0517-46bc-ac56-f3ee86bf8aa4.png?q=80"));
    drawerItemModel.add(DrawerItemModel("TVs & Appliances",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/31/10/2016/db1549b7-a409-4bea-aa76-d57e97fd9304.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Toys and Baby",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/14/08/2018/c1895632-47f2-45f7-a2af-0f736fd52969.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Beauty and Personal Care",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/27/07/2018/b124a16b-e4b6-4d76-a271-81cf6ee830c9.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Sports,Books and More",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/31/10/2016/e33209f1-50f0-4f08-bc7b-bf0d61c87b84.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Grocery",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/30/06/2017/250d742c-0971-4a3e-bef7-6cfbdd6d306b.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Offer Zone",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/08/04/2016/a12880b1-9c2b-4b4b-9029-31ba9ff666bf.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Game Zone",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/30/09/2018/85180d09-63b4-43c4-b2ab-5ef5f6802620.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Orders",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Rewards",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/31/08/2016/3afaefd4-3961-4cac-921c-b9517c96ad47.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Cart",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Wishlist",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Account",
        imageRes:
            "https://rukminim1.flixcart.com/www/50/50/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Notification Preferences"));
    drawerItemModel.add(DrawerItemModel("Gift Card"));
    drawerItemModel.add(DrawerItemModel("My Chats"));
    drawerItemModel.add(DrawerItemModel("Help Centre"));
    drawerItemModel.add(DrawerItemModel("Legal"));
  }

  buildItem(BuildContext context, int index) {
    if (drawerItemModel[index].imageRes != null) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.network(
                    drawerItemModel[index].imageRes!,
                    height: 15,
                    width: 15,
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Text(
                    drawerItemModel[index].name,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          index == 0 || index == 8 || index == 10 || index == 15
              ? Container(
                  color: Colors.grey,
                  height: 1,
                )
              : const SizedBox(
                  height: 0,
                )
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 10, left: 20),
        child: Text(
          drawerItemModel[index].name,
          style: const TextStyle(fontSize: 15),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          height: size.height / 10,
          color: const Color(0xff2874F0),
          child: Center(
            child: ListTile(
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                trailing: Image.asset(
                  "assets/flutter2.png",
                  height: size.height / 20,
                  width: size.width / 10,
                )),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: drawerItemModel.length,
          itemBuilder: (context, index) {
            return buildItem(context, index);
          },
        )
      ],
    );
  }
}

class DrawerItemModel {
  final String _name;
  final String? imageRes;

  DrawerItemModel(this._name, {this.imageRes});

  String get name => _name;
}
