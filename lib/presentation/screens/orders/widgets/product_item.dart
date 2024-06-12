import 'package:flutter/material.dart';
import 'package:practice_day_one/presentation/theme/colours.dart';
import 'package:practice_day_one/presentation/theme/styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      width: 125,
      height: 125,
      padding: EdgeInsets.zero,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColour.containerColour,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text("Cheese Burger", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("\u002415", style: AppStyles.productPriceTextStyle,),
                          Text("/pcs", style: AppStyles.productUnitTextStyle,),
                        ],
                      ),
                      OutlinedButton(
                        onPressed: () {}, 
                        child: const Text("Order")
                      )
                    ],
                  ),
                ],
              )
            )
          ],
        ),
    );
  }
}
