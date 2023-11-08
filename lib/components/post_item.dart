import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key, required this.user});
  final String user;

  @override
  Widget build(BuildContext context) {
    return _userItem();
  }

  Widget _userItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/ja.png',
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                user,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset('assets/temp/cutecat.jpg'),
          const Text(
            '🐱 Today, I am full of cat energy! 😺 My feline companion just brought me her favorite toy, so its time for some craziness! 🎉 How are you spending your day today? 🐾 #CatJoy #ILoveCats #Caturday',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
