import 'package:flutter/material.dart';

import './email_field.dart';
import './password_field.dart';

class SignUpSection extends StatefulWidget {
  static const routeName = '/signup';

  const SignUpSection({Key? key}) : super(key: key);

  @override
  State<SignUpSection> createState() => _SignUpSectionState();
}

class _SignUpSectionState extends State<SignUpSection> {
  @override
  Widget build(BuildContext context) {
    final forgotPassword = Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      alignment: Alignment.topRight,
      child: const Text(
        "Forgot Password?",
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black,
        ),
      ),
    );

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Rent',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontFamily: 'MusticaPro',
                    ),
                  ),
                  Text(
                    'Me',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 70,
                      fontFamily: 'MusticaPro',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const EmailField(),
            const SizedBox(height: 10),
            const PasswordField(),
            const PasswordField(),
            const PasswordField(),
            forgotPassword,
          ],
        ),
      ),
    );
  }
}
