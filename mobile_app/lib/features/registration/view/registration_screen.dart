import 'package:flutter/material.dart';
import 'package:mobile_app/features/registration/widgets/register_button.dart';
import 'package:mobile_app/features/registration/widgets/widgets.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isEmailVerified = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController verifyPasswordController = TextEditingController();

  final TextEditingController nicknameController = TextEditingController();

  var linkRequestData = {
    "email": "",
    "password":"",
  };

  var finishRegistrationRequestData = {
    "name":"",
    "avatar_path":"",
  };

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    verifyPasswordController.dispose();
    nicknameController.dispose();
    super.dispose();
  }

  void _backToEmail(){
    setState(() {
      isEmailVerified = !isEmailVerified;
    });
  }

  void _sendRequest(){
    linkRequestData['email'] = emailController.text;
    linkRequestData['password'] = passwordController.text;

    for(final value in linkRequestData.values){
      debugPrint(value);
    }

    var response = 200;
    if (response == 200){
      setState(() {
        isEmailVerified = !isEmailVerified;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Background(
        frame: MainFrame(
          frameElements: [
            if (!isEmailVerified)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [EmailInput(controller: emailController,)],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [PasswordInput(controller: passwordController,)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [PasswordConfirmationInput(controller: verifyPasswordController,)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [ToLoginLink()],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [RegisterButton(requestFunction: _sendRequest,)],
                  ),
                ],
              )
            else
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [SizedBox(width: 15,), BackToEmailButton(requestFunction: _backToEmail,), ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [AvatarInput(), UploadPhotoButton()],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            NameInput(controller: nicknameController,),
                            SizedBox(width: 5,),
                            CreateAccountArrow(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
