import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ScreenProvider>(
        builder: (context) => ScreenProvider(),
        child: Builder(builder: (context) {
          return Scaffold(
            body: Container(
                padding: EdgeInsets.all(16),
                child: Consumer<ScreenProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'You have pushed the button this many times:',
                        ),
                        Text(
                          provider.counterValue.toString(),
                          style: Theme.of(context).textTheme.display1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              onPressed: () {
                                provider.incrementCounter();
                              },
                              tooltip: 'Increment',
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                provider.decrementCounter();
                              },
                              child: Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                )),
          );
        }));
  }
}
