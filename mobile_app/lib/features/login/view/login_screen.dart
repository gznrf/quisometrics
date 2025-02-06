import 'package:flutter/material.dart';

class TextFieldSwitcher extends StatefulWidget {
  const TextFieldSwitcher({Key? key}) : super(key: key);

  @override
  _TextFieldSwitcherState createState() => _TextFieldSwitcherState();
}

class _TextFieldSwitcherState extends State<TextFieldSwitcher> {
  bool showTextFields = true;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  void _sendRequest(){
    debugPrint(controller2.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Switcher'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showTextFields)
              Column(
                children: [
                  TextField(
                    controller: controller1,
                    decoration: const InputDecoration(
                      hintText: 'Enter text here',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: controller2,
                    decoration: const InputDecoration(
                      hintText: 'Enter another text here',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (value) {
                      _sendRequest();
                    },
                  ),
                ],
              )
            else
              const Column(
                children: [
                  Text(
                    'Текстовые поля скрыты!',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Здесь может быть что-то другое',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showTextFields = !showTextFields;
                });
              },
              child: Text(showTextFields ? 'Скрыть поля' : 'Показать поля'),
            ),
          ],
        ),
      ),
    );
  }
}