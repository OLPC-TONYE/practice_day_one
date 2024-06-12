import 'package:flutter/material.dart';
import 'package:practice_day_one/presentation/theme/colours.dart';
import 'package:practice_day_one/presentation/theme/styles.dart';

import 'presentation/screens/orders/widgets/product_category_filter.dart';
import 'presentation/screens/orders/widgets/product_item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      home: Scaffold(
        backgroundColor: AppColour.backgroundColour,
        body: const ScaffoldLayout(),
      ),
    );
  }
}

class ScaffoldLayout extends StatelessWidget {
  const ScaffoldLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Column(
          children: [
            Container(
              color: AppColour.containerColour,
              height: height * 0.09,
              width: width * 0.2,
              child: Column(),
            ),
            Expanded(
              child: Container(
                color: AppColour.containerColour,
                width: width * 0.2,
                child: Column(),
              ),
            ),
          ],
        ),
        Expanded(
          child: PointOfSale(height: height, width: width),
        ),
      ],
    );
  }
}

class PointOfSale extends StatelessWidget {
  const PointOfSale({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColour.containerColour,
          height: height * 0.09,
          child: Row(),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                      child: Row(
                        children: [
                          ProductCategoryFilter()
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 260,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemCount: 9,
                          itemBuilder:(context, index) {
                            
                            return ProductItem();
                          },
                        ),
                      ),
                    ) 
                  ],
                )
              ),
              Container(
                color: AppColour.containerColour,
                width: width * 0.2,
                child: Column(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
