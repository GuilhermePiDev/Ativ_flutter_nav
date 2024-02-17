import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Navegando';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Tela 2',
      style: optionStyle,
    ),
    Text(
      'Tela 3',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        
        child: ListView(
          
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Header'),
            ),
            ListTile(
              title: const Text('Tela 1'),
              selected: _selectedIndex == 0,
              onTap: () {
              
                _onItemTapped(0);
               
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Tela 2'),
              selected: _selectedIndex == 1,
              onTap: () {
              
                _onItemTapped(1);
               
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Tela 3'),
              selected: _selectedIndex == 2,
              onTap: () {
                
                _onItemTapped(2);
                
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}