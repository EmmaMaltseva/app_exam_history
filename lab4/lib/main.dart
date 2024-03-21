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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 29, 161, 29)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
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
        title: Text(
          widget.title,
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Center(
        child: Card(
            child: Column(
          children: [
            ListTile(title: const Text('1625')),
            Image(image: AssetImage('images/pic1.jpg')),
            Row(
              children: [
                Column(
                  children: [
                    Text('Общежитие №20'),
                    Text('Краснодар, ул. Калинина, 13')
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.red),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(children: [
                  const Icon(Icons.phone, color: Colors.green),
                  Text(
                    'Позвонить',
                    style:
                        TextStyle(height: 5, fontSize: 10, color: Colors.green),
                  ),
                ]),
                Column(children: [
                  const Icon(Icons.location_on, color: Colors.green),
                  Text(
                    'Маршрут',
                    style:
                        TextStyle(height: 5, fontSize: 10, color: Colors.green),
                  ),
                ]),
                Column(children: [
                  const Icon(Icons.share, color: Colors.green),
                  Text(
                    'Поделиться',
                    style:
                        TextStyle(height: 5, fontSize: 10, color: Colors.green),
                  ),
                ])
              ],
            ),
            Text(
              'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что состав-ляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в об-щежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направ-лена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требова-ниям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных за-лов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю ра-боту по самообслуживанию.»',
              style: TextStyle(color: Colors.green),
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
