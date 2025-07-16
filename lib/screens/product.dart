import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widgets/TextButtonWidget.dart';
import 'package:flutter_application_5/Widgets/appbar.dart';
import 'package:flutter_application_5/Widgets/productwidget.dart';
import 'package:flutter_application_5/screens/cartPage.dart';
import 'package:flutter_application_5/models/gridviewmodel.dart';

class Product extends StatefulWidget {
  Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<Gridviewmodel> products = [
    Gridviewmodel(photo: "assets/imge1.jpg", title: "Black Shirt"),
    Gridviewmodel(photo: "assets/imge2.avif", title: "Classic Shirt"),
    Gridviewmodel(photo: "assets/imge3.jpg", title: "Green Shirt"),
    Gridviewmodel(photo: "assets/imge4.jpg", title: "Half Sleeve Shirt"),
  ];

  List<Gridviewmodel> productOffers = [
    Gridviewmodel(photo: "assets/imge5.webp", title: "White T-shirt"),
    Gridviewmodel(photo: "assets/imge6.avif", title: "Half Sleeve Shirt"),
    Gridviewmodel(photo: "assets/imge7.avif", title: "Blue T-shirt"),
    Gridviewmodel(photo: "assets/imge8.webp", title: "Classic Shirt"),
    Gridviewmodel(photo: "assets/imge10.avif", title: "Hoodie"),
  ];
  int countCard = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidegts(
        appbarText: "our_products".tr(),
        stackCard: Stack(
          children: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cartpage()),
                );
              },
            ),
            if (countCard > 0)
              Positioned(
                right: 4,
                top: 4,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    countCard.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "featured_products".tr(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset("assets/imge5.webp"),
                  Image.asset("assets/imge6.avif"),
                  Image.asset("assets/imge1.jpg"),
                  Image.asset("assets/imge6.avif"),
                  Image.asset("assets/imge7.avif"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "products".tr(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 4,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Productwidget(
                  model: products[index],
                  button: TextButtonWidget(
                    buttonName: "add_to_cart".tr(),
                    onTap: () {
                      setState(() {
                        countCard++;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.lightGreen,
                          content: Text(
                            "item_added_to_cart".tr(),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "hot_offers".tr(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: productOffers.length,
              itemBuilder: (context, index) {
                return Productwidget(model: productOffers[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
