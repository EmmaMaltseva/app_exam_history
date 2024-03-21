import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image(image: AssetImage('images/pic1.jpg')),
                ),
                Expanded(
                  flex: 2,
                  child: Image(image: AssetImage('images/pic1.jpg')),
                ),
                Expanded(
                  child: Image(
                      image: NetworkImage(
                          'data:image/png;base64,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')),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star,
                    color: const Color.fromARGB(255, 158, 76, 175)),
                Icon(Icons.star, color: Colors.green[500]),
                Icon(Icons.star, color: Colors.green[500]),
                const Icon(Icons.favorite, color: Colors.black),
                const Icon(Icons.star, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
