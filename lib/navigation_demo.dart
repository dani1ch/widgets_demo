import 'package:flutter/material.dart';

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({Key? key}) : super(key: key);

  @override
  _NavigationDemoState createState() => _NavigationDemoState();
}

class _NavigationDemoState extends State<NavigationDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const MainScreen(),
        '/contacts':(context) => const SecondScreen(),
        '/profile':(context) => const ProfileScreen(),
        '/settings':(context) => const SettingsScreen(),
      },
    );
  }
}

Widget navDrawer(context) => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Container(
            height: 200,
          ),
      ),
      ListTile(
        leading: const Icon(Icons.ad_units),
        title:  const Text ("Главная"),
        onTap: (){
          Navigator.pushNamed(context, '/');
        },
      ),
      ListTile(
        leading: const Icon(Icons.phone),
        title:  const Text ("Контакты"),
        onTap: (){
          Navigator.pushNamed(context, '/contacts');
        },
      ),
      ListTile(
        leading: const Icon(Icons.accessibility),
        title:  const Text ("Профиль"),
        onTap: (){
          Navigator.pushNamed(context, '/profile');
        },
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.settings),
        title:  const Text ("Настройки"),
        onTap: (){
          Navigator.pushNamed(context, '/settings');
        },
      ),
    ],
  ),
);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text ("Главная"),
          actions:<Widget> [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, '/settings');
            }, icon: const Icon(Icons.settings)),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, '/profile');
            }, child: const Text("Профиль"),
            style: buttonStyle),
          ],
        ),
        drawer: navDrawer(context),
        body: const Center(
            child: Text ("Главная страница")
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Контакты"),
        ),
        drawer: navDrawer(context),
        body: const Center(
            child: Text ("Контакты")
        ),
      ),
    );
  }
}
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text ("Профиль"),
        ),
        drawer: navDrawer(context),
        body: const Center(
            child: Text ("Ваш профиль")
        ),
      ),
    );
  }
}
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text ("Настройки"),
        ),
        drawer: navDrawer(context),
        body: const Center(
            child: Text ("Ваши настройки")
        ),
      ),
    );
  }
}
