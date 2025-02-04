import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/features/loading/widgets/widgets.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with SingleTickerProviderStateMixin {

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    
    Future.delayed(Duration(seconds: 60), () {
      //Пользователь не должен возвразаться на экран загрузки
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          backgroundElements: [
            FirstTitle(),
            SecondTitle(),
            ThirdTitle(),
            SizedBox(height: 70,),
          ],
      )
    );
  }
}

