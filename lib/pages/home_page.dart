import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  final Map<String, dynamic> usuario;

  const HomePage({Key key, this.usuario}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.usuario);
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/logounmsm.png',
            height: 45.0,
          ),
          actions: <Widget>[
            InkWell(
                onTap: () {
                  try {
                    //Provider.of<LoginState>(context).logout();
                  } catch (e) {}

                  debugPrint("click logout");
                  //showAlertDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.exit_to_app),
                ))
          ],
          backgroundColor: Colors.indigo[900],
        ),
        body: Column(
          children: <Widget>[
            welcome(),
            Container(
              padding: EdgeInsets.all(15),
              //child: getTabBar(),
            ),
            /*Expanded(
              child: getTabBarView(),
            ),*/
          ],
        ),
      ),
    );
  }
} 

Widget welcome() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(120.0),
            child: Image.asset(
              'assets/usuario.png',
              height: 100,
            ),
          ),
        ),
        Container(
          child: Text("HOLA " + "brian",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
          height: 40,
        )
      ],
    );
  }