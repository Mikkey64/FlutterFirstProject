import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/post_item.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/config/app_routes.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> users = [];
  final List<String> favouriteImages = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.nearby);
          },
          icon: SvgPicture.asset(
            'assets/svg/map-marker-check.svg',
            color: Colors.white,
          ),
        ),
      ], title: 'MikkeyApp'),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final isFavorited = favouriteImages.contains(users[index]);
          return Column(children: [
            PostItem(
              user: users[index],
            ),
            IconButton(
              icon: Icon(
                isFavorited ? Icons.favorite : Icons.favorite_border,
                color: isFavorited ? Colors.red : null,
              ),
              onPressed: () {
                setState(() {
                  if (isFavorited) {
                    favouriteImages.remove(users[index]);
                  } else {
                    favouriteImages.add(users[index]);
                  }
                });
              },
            ),
          ]);
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}
