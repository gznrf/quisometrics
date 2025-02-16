import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'lib/LoginForm/img.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 50),
                // Ввод почты
                Container(
                  width: 319,
                  height: 67,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Почта',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Ввод пароля
                Container(
                  width: 319,
                  height: 67,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Пароль',
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 67,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      // переход на главный экран
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Match the container's border radius
                      ),
                      elevation: 0, // Remove shadow
                      padding: EdgeInsets.zero, // Remove default padding
                    ),
                    child: Text(
                      'Войти',
                    ),
                  ),
                ),

                SizedBox(height: 20),
                // Нет аккаунта и Создать аккаунт
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Нет аккаунта? '),
                    TextButton(
                      onPressed: () {
                        // тут надо реализовать переход на создание аккаунта
                      },
                      child: Text('Создать аккаунт'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
