import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/theme/app_colors.dart';
import 'package:flutter_application_1/common/theme/app_text_theme.dart';
import 'package:flutter_application_1/providers/theme_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DrawerDesign extends StatelessWidget {
  const DrawerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Drawer(
      width: 269.w,
      backgroundColor: AppColors.primarydark,
      child: Column(
        children: [
          Container(
            width: 269.w,
            height: 166.h,
            decoration: BoxDecoration(color: AppColors.primarylight),
            child: Center(
              child: Text(
                "News App",
                style: theme.textTheme.headlineMedium!.copyWith(
                  color: AppColors.primarydark),  ),
            ),  ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(8),
              leading: const Icon(Icons.home_outlined),
              iconColor: AppColors.primarylight,
              title: Text(
                "Go To Home",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: AppColors.primarylight,
                ),),), ),
          Divider(
            thickness: 1,
            color: AppColors.primarylight,
            endIndent: 15.w,
            indent: 15.w,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              leading: const Icon(Icons.imagesearch_roller_outlined),
              iconColor: AppColors.primarylight,
              title: Text(
                "Them",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: AppColors.primarylight,
                ),
              ),
            ),
          ),

          // Theme Dropdown
          DropdownMenu<ThemeMode>(
            initialSelection: context.watch<ThemeProvider>().mode,
            onSelected: (ThemeMode ?value) {
              if(value!=null){
                context.read<ThemeProvider>().changeTheme(value);
              }
              
            },
            width: 237.w,

            textStyle: AppTextStyle.styleS20W500.copyWith(
              color: AppColors.primarylight, ),

            trailingIcon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.primarylight),

            selectedTrailingIcon: Icon(
              Icons.keyboard_arrow_up,
              color: AppColors.primarylight,
            ),

            menuStyle: MenuStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.primarydark),
            ),

            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: AppColors.primarydark,

              contentPadding: EdgeInsets.symmetric(
                vertical: 16.w,
                horizontal: 16.w,
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide: BorderSide(color: AppColors.primarylight),
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide: BorderSide(color: AppColors.primarylight),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide: BorderSide(color: AppColors.primarylight),
              ),
            ),

            dropdownMenuEntries: [
              DropdownMenuEntry<ThemeMode>(
                value: ThemeMode.light,
                label: 'Light',
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(
                    AppColors.primarylight,
                  ),
                ),
              ),

              DropdownMenuEntry<ThemeMode>(
                
                value: ThemeMode.dark,
                label: 'Dark',
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(
                    AppColors.primarylight,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          Divider(
            thickness: 1,
            color: AppColors.primarylight,
            endIndent: 15.w,
            indent: 15.w,
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              leading: const Icon(Icons.language_outlined),
              iconColor: AppColors.primarylight,
              title: Text(
                "Language",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: AppColors.primarylight,
                ),
              ),
            ),
          ),

          // Language Dropdown
          DropdownMenu<String>(
            width: 237.w,

            textStyle: AppTextStyle.styleS20W500.copyWith(
              color: AppColors.primarylight,
            ),

            trailingIcon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.primarylight,
            ),

            selectedTrailingIcon: Icon(
              Icons.keyboard_arrow_up,
              color: AppColors.primarylight,
            ),

            
            menuStyle: MenuStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.primarydark),
            ),

            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: AppColors.primarydark,

              contentPadding: EdgeInsets.symmetric(
                vertical: 16.w,
                horizontal: 16.w,
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide: BorderSide(color: AppColors.primarylight),
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide: BorderSide(color: AppColors.primarylight),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                borderSide: BorderSide(color: AppColors.primarylight),
              ),
            ),

            dropdownMenuEntries: [
              DropdownMenuEntry<String>(
                value: "English",
                label: "English",
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(
                    AppColors.primarylight,
                  ),
                ),
              ),
              DropdownMenuEntry<String>(
                value: "Arabic",
                label: "Arabic",
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(
                    AppColors.primarylight,
                  ),
                ),
              ),
            ],
          ),
        ],),);}}
