import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(0, 153, 152, 152),
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'Friends',
              style: TextStyle(
                fontSize: 25,
                letterSpacing: 1,
              ),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No friends yet'),
          ],
        ),
      ),
    );
  }
}
