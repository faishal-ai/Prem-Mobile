import 'package:flutter/material.dart';
import 'red_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Home Page',
      theme: ThemeData(primarySwatch: Colors.blue),
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

  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container kuning: gunakan width lebih besar agar teks jelas
            Container(
              color: Colors.yellowAccent,
              width: 220, // ubah sesuai kebutuhan layar
              padding: const EdgeInsets.all(8),
              child: const RedTextWidget(
                text: 'You have pushed the button this many times:',
              ),
            ),

            const SizedBox(height: 12),

            // Container hijau: contoh Text biasa
            Container(
              color: Colors.greenAccent,
              width: 220,
              padding: const EdgeInsets.all(8),
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),

            const SizedBox(height: 16),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium
                  ?? const TextStyle(fontSize: 36),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
