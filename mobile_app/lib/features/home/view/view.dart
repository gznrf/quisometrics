import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Домашний экран', style: TextStyle(fontSize: 34),),
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/registration');
                },
                child: Text('Registration', style: TextStyle(fontSize: 34),)
            ),
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Login', style: TextStyle(fontSize: 34),)
            ),

          ],
        ),
      ),
    );
  }
}
