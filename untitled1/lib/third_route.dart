import 'package:flutter/material.dart';

void main() {
  runApp(const ThirdRoute());
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Examples')),
        body: Column(
          children: const <Widget>[
            //Spacer(),
            ElevatedCardExample(),
            FilledCardExample(),
            OutlinedCardExample(),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.red.withAlpha(200),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 390,
            height: 50,
            child: Text('toi thuc hien'),
          ),
        ),
      ),
    );
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tôi theo dõi"),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: const SizedBox(
              width: 390,
              height: 50,
              child: Text('toi thuc hien'),
            ),
          ),
        ),
      ),
    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 390,
            height: 50,
            child: Text('toi thuc hien'),
          ),
        ),
      ),
    );
  }
}
