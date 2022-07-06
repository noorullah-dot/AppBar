import 'package:appbar/clickonbuttontonextpage_screen.dart';
import 'package:appbar/transparentappbar.dart_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Appbar());
}

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar',
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text('AppBar',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print('Hello');
                },
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notification_add)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Clickonbuttontonextpage()));
                      });
                    },
                    icon: Icon(Icons.forward)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
              centerTitle: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  //gradient: LinearGradient(colors: [Colors.white, Colors.lightGreen]),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSls3z7Sk6oyqhuvF2nNM5gBnfwS6gHAXth3hRSIGQFJtPlCRdA3baAL4xCjKU5BgsN8g0&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              bottom: TabBar(
                indicatorColor: Colors.white,
                //indicatorWeight: 4,
                isScrollable: true,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'HOME',
                  ),
                  Tab(
                    icon: Icon(Icons.list_alt),
                    text: 'Feed',
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'Profile',
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                    text: 'setting',
                  )
                ],
              )),
          body: TabBarView(children: [
            buildPage('Home Page'),
            buildPage('Feed page'),
            buildPage('Profile Page'),
            buildPage('Setting Page'),
          ]),
        ));
  }

  Widget buildPage(String text) => Center(
          child: Text(
        text,
        style: TextStyle(fontSize: 30, color: Colors.black54),
      ));
}
