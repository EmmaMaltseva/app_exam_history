import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text('Форма ввода')),
      body: const MyForm(),
    )));

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State {
  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _fromKey,
        child: Column(
          children: [
            const Text(
              'Имя пользователя: ',
              style: TextStyle(fontSize: 20.0),
            ),
            TextFormField(validator: (value) {
              if (value!.isEmpty) return "Пожалуйста, введите свое имя";
            }),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_fromKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Форма успешно заполнена'),
                        backgroundColor: Colors.green),
                  );
                }
              },
              child: const Text('проверить',
                  style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
