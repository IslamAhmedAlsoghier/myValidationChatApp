import 'package:flutter/material.dart';
import 'package:mychatapp/Constans/form_validation.dart';
import 'package:mychatapp/Custom_Widgets/CustomButton.dart';
import 'package:mychatapp/Custom_Widgets/CustomText.dart';
import 'package:mychatapp/Custom_Widgets/CustomTextFormField.dart';

class HomeSreen extends StatefulWidget {
  HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: const Text(
            ' Chat here',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _loginFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Hi , Welcom Back',
                      fontsize: 20,
                      fontweight: FontWeight.w800,
                    ),
                    CustomText(
                      text: 'Hello again , you\'v been missed',
                      fontsize: 15,
                      fontweight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    CustomTextFieldText(
                      text: 'Email',
                      validationExp: EMAIL_VALIDATION_REGEX,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFieldText(
                      text: 'Password',
                      validationExp: PASSWORD_VALIDATION_REGEX,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    CustomButton(
                      text: 'Login',
                      onPressed: () {
                        Future.delayed(Duration.zero, () {
                          if (_loginFormKey.currentState?.validate() ?? false) {
                            print('A7A');
                          }
                        });
                      },
                      backGroundColor: Colors.blue,
                      foreGrounCcolor: Colors.white,
                    ),
                    const SizedBox(
                      height: 250,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(text: 'Don\'t have an account?'),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomText(
                          text: 'Sign Up',
                          fontweight: FontWeight.w800,
                        ),
                      ],
                    ),

                    // )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
