import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  Color initialColor = Colors.grey;
  double tinggi = 100;
  double lebar = 100;

  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: "1",
                onPressed: () {
                  x += 0.1;
                  setState(() {});
                },
                child: const Icon(Icons.arrow_downward),
              ),
              FloatingActionButton(
                heroTag: "2",
                onPressed: () {
                  x -= 0.1;
                  setState(() {});
                },
                child: const Icon(Icons.arrow_upward),
              ),
              FloatingActionButton(
                heroTag: "3",
                onPressed: () {
                  y -= 0.1;
                  setState(() {});
                },
                child: const Icon(Icons.arrow_back),
              ),
              FloatingActionButton(
                heroTag: "4",
                onPressed: () {
                  y += 0.1;
                  setState(() {});
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: "5",
                onPressed: () {
                  tinggi -= 50;
                  lebar -= 50;
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                heroTag: "6",
                onPressed: () {
                  tinggi += 50;
                  lebar += 50;
                  setState(() {});
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: Align(
                alignment: Alignment(y, x),
                child: Container(
                  height: tinggi,
                  width: lebar,
                  color: initialColor,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    initialColor = Colors.red;
                    setState(() {});
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    initialColor = Colors.green;
                    setState(() {});
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.green,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    initialColor = Colors.blue;
                    setState(() {});
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    initialColor = Colors.yellow;
                    setState(() {});
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.yellow,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    initialColor = Colors.black;
                    setState(() {});
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
