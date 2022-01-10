import 'package:flutter/material.dart';
import 'package:widgets_demo/global_theme.dart';

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({Key? key}) : super(key: key);

  @override
  _NavigationDemoState createState() => _NavigationDemoState();
}

class _NavigationDemoState extends State<NavigationDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
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
          decoration: const BoxDecoration(color: Colors.amber),
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
      const Divider(
        color: Colors.amber,
      ),
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
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
          color: Color(0xFFeceff1), width: 2),);

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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50,),
                const SizedBox(width: 110,height: 83,
                  child: Image(image: AssetImage('assets/img/logo.png'),),),
                const SizedBox(height: 20,),
                const Text("Введите логин в виде 10 цифр номера телефона",),
                const SizedBox(height: 20,),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: "Телефон",
                  ),
                ),
                const SizedBox(height: 20,),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: "Пароль",
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: 180,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text("Войти"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        )
                    ),),
                ),
                const SizedBox(height: 60,),
                InkWell(child: const Text("Регистрация"),
                  onTap: (){},),
                const SizedBox(height: 20,),
                InkWell(child: const Text("Забыли пароль?"),
                  onTap: (){},),
              ],
            ),
          ),
        )
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
