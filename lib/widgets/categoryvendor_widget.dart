import 'package:eventorganizerapp/utils/export_utils.dart';
import 'package:flutter/material.dart';

class CategoryVendorWidget extends StatelessWidget {
  final String image;
  const CategoryVendorWidget({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 140.w,
      decoration: BoxDecoration(
          border: Border.all(
        width: 2,
        color: AppColorUtils.beigeBorderColor,
      )),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
