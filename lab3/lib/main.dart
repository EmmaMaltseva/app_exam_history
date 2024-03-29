import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateleswidget - статичный, не изменяется во время исполнения
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // виджет основного окна приложения (совокупность всех окон)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 91, 220, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Инкремент'),
    );
  }
}

//StatefulWidget для отображения изменяющихся состояний
//домашняя страница:
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                '$_counter',
                style: const TextStyle(
                  fontSize: 34,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Ink(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 33, 58),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: IconButton(
                      icon: const Icon(Icons.remove),
                      color: Colors.black,
                      onPressed: _decrementCounter),
                ),
                Ink(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 40, 208, 45),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: IconButton(
                      icon: const Icon(Icons.add),
                      color: Colors.black,
                      onPressed: _incrementCounter),
                ),
              ],
            ),
            TextButton(
              onPressed: _resetCounter,
              child: const Text(
                'Сбросить',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
