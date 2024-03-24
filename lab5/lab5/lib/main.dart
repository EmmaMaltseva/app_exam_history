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
      title: 'Список элементов',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 21, 150, 29)),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 37, 174, 46),
              title: Text(
                'Список элементов',
                style:
                    TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(text: 'Простой список'),
                  Tab(text: 'Бесконечный список'),
                  Tab(text: 'Степень 2'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
              ],
            )),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text('0000'),
        Divider(),
        Text('0001'),
        Divider(),
        Text('0010'),
        Divider(),
      ],
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Text('строка $index');
    });
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Text('строка $index');
    });
  }
}
