import 'package:flutter/material.dart';
import 'package:mobile_app/features/registration/widgets/register_button.dart';
import 'package:mobile_app/features/registration/widgets/widgets.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Background(
        frame: MainFrame(
          frameElements: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [AvatarInput(), UploadPhotoButton(), RemovePhotoButton(),],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [EmailInput()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [NameInput()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [PasswordInput()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [PasswordConfirmationInput()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ToLoginLink()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [RegisterButton()],
            ),
          ],
        ),
      ),
    );
  }
}
