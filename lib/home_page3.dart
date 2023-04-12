import 'package:flutter/material.dart';

enum MyState { initial, loading, loaded }

class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  MyState myState = MyState.initial;

  Future<void> loading() async {
    await Future.delayed(const Duration(milliseconds: 500));
    myState = MyState.loading;
    await Future.delayed(const Duration(seconds: 3));
    myState = MyState.loaded;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: loading(),
        builder: (context, snapshot) {
          if (myState == MyState.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: [
              chatTile(),
              chatTile(),
              chatTile(),
              chatTile(),
              chatTile(),
              chatTile(),
            ],
          );
        },
      ),
    );
  }

  ListTile chatTile() {
    return const ListTile(
      title: Text("Mbah Sugeng"),
      subtitle: Text("Apa kabar bang?"),
    );
  }
}
