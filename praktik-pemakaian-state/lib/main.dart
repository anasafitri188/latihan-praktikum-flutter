import 'package:flutter/material.dart';
import 'SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int nilai = 5;

  void _tambah() {
    setState(() {
      nilai += 1;
    });
  }

  void _kurangi() {
    setState(() {
      nilai -= 1;
    });
  }

  void _navigateToSecondScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen(totalNilai: nilai)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Penambahan Angka')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nilai Awal:', style: TextStyle(fontSize: 20)),
            Text(
              '$nilai',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _tambah, child: const Text('Tambah 1')),
            ElevatedButton(onPressed: _kurangi, child: const Text('Kurangi 1')),
            ElevatedButton(
              onPressed: _navigateToSecondScreen,
              child: const Text('Ke Halaman Kedua'),
            ),
          ],
        ),
      ),
    );
  }
}
