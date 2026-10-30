import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/theme/app_colors.dart';
import 'package:flutter_application_1/extensions/context_extention.dart';
import 'package:flutter_application_1/models/detailes_card_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailesCard extends StatelessWidget {
  const DetailesCard({super.key, required this.detailesCardModel});
  final DetailesCardModel detailesCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.r, horizontal: 16.r),
      padding: EdgeInsets.all(7),
      width: 361.w,
      height: 322.h,
      decoration: BoxDecoration(
        border: Border.all(color: context.theme.hintColor),
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
      ),
      child: Column(
        spacing: 12.h,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            child: Image.network(
              detailesCardModel.imageUrl,
              width: 1.sw,
              height: 220.h,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            detailesCardModel.title,
            style: context.textTheme.titleMedium!.copyWith(
              color: context.theme.hintColor,
            ),
          ),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "By: ${detailesCardModel.auther}",
                style: context.textTheme.labelMedium!.copyWith(
                  fontSize: 12,
                  color: AppColors.gray,
                ),
              ),
              Text(
                detailesCardModel.publishedAt,
                style: context.textTheme.labelMedium!.copyWith(
                  fontSize: 12,
                  color: AppColors.gray,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
