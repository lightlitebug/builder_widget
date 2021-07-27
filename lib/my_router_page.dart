import 'package:builderwidget/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyRouterPage extends StatelessWidget {
  const MyRouterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
        create: (context) => Counter(),
        // builder: (context, _) {
        //   return Scaffold(
        //     appBar: AppBar(
        //       title: Text('Router Page'),
        //     ),
        //     body: Center(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             '${context.watch<Counter>().counter}',
        //             style: TextStyle(fontSize: 48.0),
        //           ),
        //           ElevatedButton(
        //             child: Text(
        //               'Increment',
        //               style: TextStyle(fontSize: 20.0),
        //             ),
        //             onPressed: () {
        //               context.read<Counter>().increment();
        //             },
        //           ),
        //         ],
        //       ),
        //     ),
        //   );
        // },
        child: Builder(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Router Page'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${context.watch<Counter>().counter}',
                      style: TextStyle(fontSize: 48.0),
                    ),
                    ElevatedButton(
                      child: Text(
                        'Increment',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      onPressed: () {
                        context.read<Counter>().increment();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
