import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/categories_enum.dart';
import 'package:flutter_application_1/extensions/context_extention.dart';
import 'package:flutter_application_1/extensions/widgets_extentsions.dart';
import 'package:flutter_application_1/providers/main_screen_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({
    super.key,
    required this.categoriesEnum,
    required this.iseven,
  });

  final CategoriesEnum categoriesEnum;
  final bool iseven;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24.r)),
        color: context.theme.colorScheme.secondary,
      ),
      child: Stack(
        children: [
          Positioned(
            left: iseven ? null : 30,
            right: iseven ? 60 : null,
            top: 40,

            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    categoriesEnum.name,
                    style: context.textTheme.labelMedium!.copyWith(
                      color: context.theme.scaffoldBackgroundColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: iseven ? 0 : null,
            right: iseven ? null : 0,
            top: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(24.r)),
              child: Image.asset(
                categoriesEnum.getImage,
                width: 180.w,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: !iseven ? Alignment(-1, .8) : Alignment(.99, .8),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: InkWell(
                onTap: () => Provider.of<MainScreenProvider>(context,listen: false).changeCatigory(categoriesEnum)
                 
                ,
                child: Container(
                  padding: EdgeInsets.all(0),
                  width: 170.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.r)),
                    color: context.theme.scaffoldBackgroundColor.withValues(
                      alpha: 0.5,
                    ),
                  ),
                  child: Row(mainAxisAlignment: .spaceBetween,
                   
                    children: [
                      if (!iseven)
                       Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(55)),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                context.theme.scaffoldBackgroundColor,
                            child: Icon(
                              !iseven
                                  ? Icons.arrow_back_ios_new_outlined
                                  : Icons.arrow_forward_ios_outlined,
                              color: context.theme.colorScheme.secondary,
                              size: 16.w,
                            ),
                          ).allPadding(value: 0),
                        ),
                      ),
                      Text(
                        "View All",
                        style: context.textTheme.labelMedium!.copyWith(
                          color: context.theme.colorScheme.secondary,
                        ),
                      ).symatricPadding(horizontal: 15.w, vertical: 5),
                      if(iseven)
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(55)),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                context.theme.scaffoldBackgroundColor,
                            child: Icon(
                              !iseven
                                  ? Icons.arrow_back_ios_new_outlined
                                  : Icons.arrow_forward_ios_outlined,
                              color: context.theme.colorScheme.secondary,
                              size: 16.w,
                            ),
                          ).allPadding(value: 0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
