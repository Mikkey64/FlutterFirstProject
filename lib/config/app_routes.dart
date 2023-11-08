import 'package:flutter_application_1/pages/Message_page.dart';
import 'package:flutter_application_1/pages/add_page.dart';
import 'package:flutter_application_1/pages/edit_profile_page.dart';
import 'package:flutter_application_1/pages/favourite_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => const LoginPage(),
    home: (context) => const HomePage(),
    main: (context) => const MainPage(),
    editProfile: (context) => const EditProfilePage(),
    "/nearby": (context) => const NearbyPage(),
    "/favorite": (context) => const FavoritePage(),
    "/messages": (context) => const MessagePage(),
    "/add": (context) => const AddPage(),
  };
  static const login = '/login';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/editProfile';
  static const nearby = '/nearby';
  static const add = '/add';
}
