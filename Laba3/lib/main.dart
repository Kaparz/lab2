import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Increment App',
      theme: ThemeData(
        primarySwatch: Colors.green, // Зеленая тема
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Инициализация счетчика

  // Функция для увеличения счетчика
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Функция для уменьшения счетчика
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  // Функция для сброса счетчика
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Инкремент'), // Заголовок приложения
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Значение инкремента:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter', // Показывает значение счетчика
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 20), // Отступ между элементами
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove), // Иконка минуса
                  onPressed: _decrementCounter, // Уменьшить счетчик
                ),
                IconButton(
                  icon: Icon(Icons.add), // Иконка плюса
                  onPressed: _incrementCounter, // Увеличить счетчик
                ),
              ],
            ),
            SizedBox(height: 20), // Отступ между кнопками
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey, // Цвет фона кнопки
              ),
              onPressed: _resetCounter, // Сбросить счетчик
              child: Text(
                'Сбросить',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
