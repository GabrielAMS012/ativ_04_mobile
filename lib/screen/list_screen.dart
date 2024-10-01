import 'package:flutter/material.dart';
import "package:atividade04/screen/form_screen.dart";

class ScreenList extends StatefulWidget {
  @override
  _ScreenListState createState() => _ScreenListState();
}

class _ScreenListState extends State<ScreenList> {
  final List<String> _items = [];

  void _addItem(String item) {
    setState(() {
      _items.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(_items[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FormScreen(_addItem),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
