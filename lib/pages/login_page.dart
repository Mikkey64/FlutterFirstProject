// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/config/app_routes.dart';
import 'package:flutter_application_1/config/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    print(
      MediaQuery.of(context).size.height,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Spacer(),
              Text(
                AppStrings.welcome,
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 251, 251),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                AppStrings.enterYourLoginAndPassword,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: AppStrings.username,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: Color.fromARGB(214, 122, 122, 173),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: AppStrings.password,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: Color.fromARGB(214, 122, 122, 173),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    print('Forgot is clicked');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Forgot password?'),
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(216, 69, 70, 124),
                      foregroundColor: Color.fromRGBO(115, 64, 255, 0.978)),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                AppStrings.orLogInWith,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    print('Log in with Google is clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(216, 69, 70, 124),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.ic_google,
                        width: 40,
                        height: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        AppStrings.loginWithGoogle,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    print('Facebook log in is pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(216, 69, 70, 124),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.ic_facebook,
                        width: 40,
                        height: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        AppStrings.loginWithFacebook,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    AppStrings.dontHaveAccount,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Color.fromRGBO(115, 64, 255, 0.978),
                    ),
                    child: Text(
                      AppStrings.signup,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
