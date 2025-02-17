import 'package:flutter/material.dart';

class Crossroad extends StatelessWidget {
  const Crossroad({super.key});

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
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Home', style: TextStyle(fontSize: 34),)
            ),
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/profile');
                },
                child: Text('profile', style: TextStyle(fontSize: 34),)
            ),
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/league');
                },
                child: Text('league', style: TextStyle(fontSize: 34),)
            ),
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/settings');
                },
                child: Text('settings', style: TextStyle(fontSize: 34),)
            ),
          ],
        ),
      ),
    );
  }
}
