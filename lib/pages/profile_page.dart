import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/components/user_avatar.dart';
import 'package:flutter_application_1/config/app_routes.dart';
import 'package:flutter_application_1/config/app_strings.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        actions: [
          PopupMenuButton<ProfileMenu>(
              onSelected: (value) {
                switch (value) {
                  case ProfileMenu.edit:
                    Navigator.of(context).pushNamed(AppRoutes.editProfile);
                    break;
                  case ProfileMenu.logout:
                    print('Log out');
                    break;
                  default:
                }
              },
              icon: const Icon(Icons.more_vert_rounded),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: ProfileMenu.edit,
                    child: Text('Edit'),
                  ),
                  const PopupMenuItem(
                    value: ProfileMenu.logout,
                    child: Text('Log out'),
                  ),
                ];
              })
        ],
        title: 'Profile',
      ),
      body: const Column(
        children: [
          Spacer(),
          UserAvatar(
            size: 90,
            children: [],
          ),
          Text(
            'Mikkey64',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'Poland',
            style: TextStyle(fontFamily: 'Roboto'),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '500',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    AppStrings.followers,
                    style: TextStyle(fontFamily: 'Roboto'),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '52',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(fontFamily: 'Roboto'),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '253',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Following',
                    style: TextStyle(fontFamily: 'Roboto'),
                  )
                ],
              ),
            ],
          ),
          Divider(
            thickness: 4,
            indent: 10,
            endIndent: 10,
            height: 20,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
