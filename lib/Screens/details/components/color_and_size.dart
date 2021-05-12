import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(color: Color(0xFF356C95), isSelected: true),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Size\n", style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: "${product.size}",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    this.color,
    this.isSelected = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddiing / 4,
        right: kDefaultPaddiing / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
