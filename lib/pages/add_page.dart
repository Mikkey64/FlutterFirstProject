import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/user_avatar.dart';
import 'package:flutter_svg/svg.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 47, 53, 92),
            centerTitle: true,
            title: Text(
              'Add post',
              style: TextStyle(
                fontSize: 25,
              ),
            )),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Column(
                children: [
                  UserAvatar(
                    children: [],
                    size: 120,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 50,
                          ),
                          hintText: "What's on your mind",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            wordSpacing: 3,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 39, 44, 75),
                        ),
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/svg/send.svg',
                          color: Color.fromARGB(255, 64, 73, 133),
                          width: 60,
                          height: 60,
                        ),
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/photo.svg',
                      color: Color.fromARGB(255, 68, 80, 155),
                      width: 50,
                      height: 50,
                    ),
                    iconSize: 30,
                    padding: EdgeInsets.symmetric(
                      horizontal: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/friendadd.svg',
                      color: Color.fromARGB(255, 68, 80, 155),
                      width: 35,
                      height: 35,
                    ),
                    iconSize: 30,
                    padding: EdgeInsets.symmetric(
                      horizontal: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/location.svg',
                      color: Color.fromARGB(255, 68, 80, 155),
                      width: 35,
                      height: 35,
                    ),
                    iconSize: 30,
                    padding: EdgeInsets.symmetric(
                      horizontal: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/gif.svg',
                      color: Color.fromARGB(255, 68, 80, 155),
                      width: 35,
                      height: 35,
                    ),
                    iconSize: 30,
                    padding: EdgeInsets.symmetric(
                      horizontal: 35,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
