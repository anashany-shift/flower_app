import 'package:flower_app/core/utils/app_assets.dart';
import 'package:flower_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLayoutView extends StatefulWidget {
  const MainLayoutView({super.key});

  @override
  State<MainLayoutView> createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: AppColors.grey, width: 1))),
        child: BottomNavigationBar(
            showUnselectedLabels: true,
            selectedItemColor: AppColors.mainShades[50],
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            unselectedItemColor: AppColors.grey,
            selectedLabelStyle: TextStyle(color: AppColors.mainShades[50]!),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    fit: BoxFit.fill,
                    selectedIndex == 0
                        ? AppAssets.selectedHome
                        : AppAssets.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    selectedIndex == 1
                        ? AppAssets.selectedCategory
                        : AppAssets.category,
                    fit: BoxFit.fill,
                  ),
                  label: "Category"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      fit: BoxFit.fill,
                      selectedIndex == 2
                          ? AppAssets.selectedCart
                          : AppAssets.cart),
                  label: "Cart"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      fit: BoxFit.fill,
                      selectedIndex == 3
                          ? AppAssets.selectedProfile
                          : AppAssets.profile),
                  label: "Profile"),
            ]),
      ),
    );
  }
}
