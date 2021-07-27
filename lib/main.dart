import 'package:builderwidget/my_router_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Builder Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(),
      home: Builder(
        builder: (context) {
          return ElevatedButton(
            child: Text(
              'Router Page',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyRouterPage()),
            ),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
              child: Text(
                'Bottom Sheet',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Scaffold.of(context).showBottomSheet((context) {
                  return Container(
                    height: 200,
                    color: Colors.grey,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Bottom Sheet',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          ElevatedButton(
                            child: Text(
                              'Close',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                });
              },
            );
          },
        ),
      ),
    );
  }
}
