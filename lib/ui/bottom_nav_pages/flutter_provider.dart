import 'package:flora_ctse/buisness-logic/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlutterProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _counter = Provider.of<Counter>(context,listen: true);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              _counter.value.toString(),
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: ()=> _counter.increment(),
                    child: Text("Increment")
                ),
                ElevatedButton(
                    onPressed: ()=> _counter.decrement(),
                    child: Text("Decrement")
                ),
              ],
            )
          ],
        )
      )
    );
  }
}
