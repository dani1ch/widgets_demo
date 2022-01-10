import 'package:flutter/material.dart';

class TextDemoScreen extends StatelessWidget {
  const TextDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(color: Colors.indigo, width: 3)
                ),
                alignment: Alignment.center,
                child: const Text("Просто очень длинный длинный ну очень длинный текст",
                softWrap: true,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    border: Border.all(color: Colors.indigo, width: 3)
                ),
                alignment: Alignment.center,
                child: const Text.rich(
                  TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    text: "Фрагмент ",
                    children: <TextSpan>[
                      TextSpan(text: "стилизованного ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "текста", style:  TextStyle(fontStyle: FontStyle.italic))
                    ]
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
