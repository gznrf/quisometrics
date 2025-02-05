import 'package:flutter/material.dart';
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
            Text('asd'),
            Text('asd'),
            Text('asd'),
          ],
        ),
      ),
    );
  }
}
