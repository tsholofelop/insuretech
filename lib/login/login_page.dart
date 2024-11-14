import 'package:flutter/material.dart';
import 'package:insuretech/app/resources/app_theme.dart';
import 'package:insuretech/shared/app_submit_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.blueBackground,
        body: Container(
          padding: const EdgeInsets.all(16),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Image(
                  height: 150,
                  width: 200,
                  image: AssetImage(
                    'assets/images/login_logo.png',
                  ),
                ),
                Spacer(),
                Spacer(),
                AppSubmitButton(
                  title: 'Login',
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?  ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: AppTheme.blueLinkColour,
                        decorationThickness: 2,
                        color: AppTheme.blueLinkColour,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  'Continue as guest  ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
