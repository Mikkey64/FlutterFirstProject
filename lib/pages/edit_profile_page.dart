import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/app_text_field.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/components/user_avatar.dart';
import 'package:flutter_application_1/config/app_strings.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(actions: [], title: AppStrings.editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  children: [
                    const UserAvatar(
                      size: 120,
                      children: [],
                    ),
                    Positioned(
                        bottom: 7,
                        right: 0,
                        child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(214, 122, 122, 173),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: const Icon(
                              Icons.edit,
                              size: 23,
                            ))),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const AppTextField(
                hint: AppStrings.firstName,
              ),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppStrings.lastName),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppStrings.phoneNumber),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppStrings.location),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppStrings.birthday),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 43, 54, 107),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    )),
                child: Row(children: [
                  Expanded(
                    child: RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      title: const Text(AppStrings.male),
                      value: Gender.male,
                      contentPadding: EdgeInsets.zero,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      title: const Text(AppStrings.female),
                      value: Gender.female,
                      contentPadding: EdgeInsets.zero,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      title: const Text(AppStrings.other),
                      value: Gender.other,
                      contentPadding: EdgeInsets.zero,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.other;
                        });
                      },
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
