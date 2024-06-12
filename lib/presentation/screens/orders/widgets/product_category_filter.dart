import 'package:flutter/material.dart';
import 'package:practice_day_one/presentation/theme/colours.dart';

class ProductCategoryFilter extends StatelessWidget {
  const ProductCategoryFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      labelPadding: EdgeInsets.zero,
      side: BorderSide.none,
      showCheckmark: false,
      color: MaterialStateColor.resolveWith((states) {

        if (states.contains(MaterialState.selected)) {
          return AppColour.primaryColour;
        }
        return AppColour.containerColour;
      }),
      selected: true,

      onSelected: (value) {
        
      },
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColour.containerColour,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(Icons.icecream_outlined, color: AppColour.primaryColour,),
            )
          ),
          const SizedBox(width: 12,),
          Text("All Items", style: TextStyle(color: Colors.white),)
        ],
      )
    );
  }
}
