import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                angka--;
                setState(() {});
              },
              icon: const Icon(
                Icons.remove,
                size: 35,
              ),
            ),
            const SizedBox(width: 30),
            Text(
              angka.toString(),
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(width: 30),
            IconButton(
              onPressed: () {
                angka += 2;
                setState(() {});
              },
              icon: const Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
