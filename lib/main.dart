import 'package:flutter/material.dart';

void main() => runApp(SimpleCounterApp());

class SimpleCounterApp extends StatelessWidget {
  //const MyCounterText({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Simple Counter"),
        ),
        body: Counter(),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 50;

  void addCount() {
    setState(() {
      count++;
    });
  }

  void removeCount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: (removeCount),
            icon: const Text('Min'),
            label: const Icon(Icons.remove_circle),
          ),
          //-------------------------------Add
          Container(
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                count.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            //color: Colors.orange,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.orange,
            ),
          ),
          //-------------------------------Remove
          ElevatedButton.icon(
            onPressed: (addCount),
            icon: const Icon(Icons.add_circle),
            label: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
