import 'package:flutter/material.dart';

class MenuToggle extends StatefulWidget {
  @override
  _MenuToggleState createState() => _MenuToggleState();
}

class _MenuToggleState extends State<MenuToggle> {
  bool _menuOpen = false;
  double _menuWidth = 0.0;

  void _toggleMenu() {
    setState(() {
      _menuOpen = !_menuOpen;
      _menuWidth = _menuOpen ? 200.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Toggle"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: _menuWidth,
              height: MediaQuery.of(context).size.height,
              color: Colors.blueGrey,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white),
                    title: Text("Settings", style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.help, color: Colors.white),
                    title: Text("Help", style: TextStyle(color: Colors.white)),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: _toggleMenu,
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text("Tap to Open/Close Menu"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
