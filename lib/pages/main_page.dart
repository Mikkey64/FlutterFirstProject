import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_navigation_item.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/config/app_routes.dart';
import 'package:flutter_application_1/pages/Message_page.dart';
import 'package:flutter_application_1/pages/add_page.dart';
import 'package:flutter_application_1/pages/favourite_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          }),
    );
  }

  final pages = [
    const HomePage(),
    const FavoritePage(),
    AddPage(),
    const MessagePage(),
    const ProfilePage(),
  ];
}

enum Menus {
  home,
  favorite,
  add,
  message,
  user,
}

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: const EdgeInsets.all(
        24,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                children: [
                  Expanded(
                      child: BottomNavigationItem(
                    onPressed: () => onTap(Menus.home),
                    icon: AppIcons.icHome,
                    current: Menus.home,
                    name: Menus.home,
                  )),
                  Expanded(
                      child: BottomNavigationItem(
                          onPressed: () => onTap(Menus.favorite),
                          icon: AppIcons.icFavorite,
                          current: Menus.favorite,
                          name: Menus.favorite)),
                  const Spacer(),
                  Expanded(
                    child: BottomNavigationItem(
                        onPressed: () => onTap(Menus.message),
                        icon: AppIcons.icMessage,
                        current: Menus.message,
                        name: Menus.message),
                  ),
                  Expanded(
                      child: BottomNavigationItem(
                          onPressed: () => onTap(Menus.user),
                          icon: AppIcons.icUser,
                          current: Menus.user,
                          name: Menus.user)),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(AppRoutes.add),
              child: Container(
                width: 64,
                height: 64,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 98, 110, 188),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.icAdd),
              ),
            ),
          )
        ],
      ),
    );
  }
}
