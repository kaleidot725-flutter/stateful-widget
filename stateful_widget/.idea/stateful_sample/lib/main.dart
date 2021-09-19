import 'package:flutter/material.dart';

class Counter {
  int _count;
  int get count => _count;

  Counter(this._count);

  void increment() {
    _count++;
  }

  void decrement() {
    _count--;
  }
}

class CounterWidget extends StatefulWidget {
  Counter counter;

  CounterWidget(this.counter);

  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("CounterApp")),
        body: Center(child: Text(widget.counter.count.toString())),
        floatingActionButton: FloatingActionButton(
          onPressed: () => increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void increment() {
    setState(() {
      widget.counter.increment();
    });
  }

  void decrement() {
    setState(() {
      widget.counter.decrement();
    });
  }
}

void main() {
  runApp(CounterWidget(Counter(0)));
}
