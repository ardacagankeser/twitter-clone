import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/constants/ui_constants.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/theme/pallete.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
        
            child: Column(
              children: [
                AuthField(
                  controller: emailController,
                  hintText: "Email",
                ),

                SizedBox(height: 25,),
        
                AuthField(
                  controller: passwordController,
                  hintText: "Password",
                ),

                SizedBox(height: 40,),

                Align(
                  alignment: Alignment.centerRight,

                  child: RoundedSmallButton(
                    onTap: () {},
                    label: "Done",
                  ),
                ),

                SizedBox(height: 40,),

                RichText(
                  text: TextSpan(
                    text: "Don't have an account?",

                    style: TextStyle(
                      color: Pallete.whiteColor,
                      fontSize: 16,
                    ),

                    children: [
                      TextSpan(
                        text: " Sign up",

                        style: TextStyle(
                          color: Pallete.blueColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),

                        recognizer: TapGestureRecognizer()..onTap = () {
                          
                        }
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}