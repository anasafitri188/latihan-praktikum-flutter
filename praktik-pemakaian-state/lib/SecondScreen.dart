import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final int totalNilai;

  const SecondScreen({Key? key, required this.totalNilai}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total Nilai"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Nilai Saat Ini:",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$totalNilai",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
