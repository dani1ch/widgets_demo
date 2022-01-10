import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Демо AppBar"),
          actions: <Widget> [
            IconButton(onPressed: (){}, icon: const Icon(Icons.phone)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.access_alarm)),
            TextButton(onPressed: (){}, child: const Text("Кнопка"),
            style: buttonStyle,),
          ],

        ) ,
        body: const Center(
            child: Text("Контент")
        ),
      ),
    );
  }
}
