import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //REMOVER O CONST
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [BotaoCurtidor(), BotaoCurtidor(), BotaoCurtidor()],
          ),
        ),
      ),
    );
  }
}

class BotaoCurtidor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BotaoCurtidor();
}

class _BotaoCurtidor extends State<BotaoCurtidor> {
  int curtidas = 0;

  @override
  Widget build(Object context) {
    return ElevatedButton.icon(
      onPressed: () {
        setState(() {
          curtidas++;
        });
      },
      label: Text("$curtidas"),
      icon: Icon(Icons.thumb_up),
    );
  }
}
