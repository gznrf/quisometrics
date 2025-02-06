import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( //как я понял, home надо будет заменить на что-то другое, ибо из-за него этот экран всегда будет запускаться при запуске приложения
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
        title: Text('Лютейший AppBar Чтоб был емае))'),
        ),
        body: Stack(
          children: [
            // Лужайка
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            // Облака и солнце
            Positioned(
              top: 50,
              left: 30,
              child: Icon(
                Icons.cloud,
                size: 100,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 50,
              left: 155,
              child: Icon(
                Icons.wb_sunny,
                size: 150,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              top: 80,
              right: 30,
              child: Icon(
                Icons.cloud,
                size: 100,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 150,
              left: 65,
              child: Icon(
                Icons.cloud,
                size: 100,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 180,
              right: 75,
              child: Icon(
                Icons.cloud,
                size: 100,
                color: Colors.white,
              ),
            ),
            // контейнер с вводом данных
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 150,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Введите Имя',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Введите пароль',
                             style: TextStyle(
                               fontSize: 20,
                             ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
