import 'package:flutter/material.dart';
import 'package:shop_app/Screens/details/details_screen.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

import 'categories.dart';
import 'iteamCard.dart';

  @override
class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddiing),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddiing),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPaddiing,
                  crossAxisSpacing: kDefaultPaddiing),
              itemBuilder: (constant, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DeatilsScreen(
                                  product: products[index],
                                ))),
                  )),
        ))
      ],
    );
  }
 }
