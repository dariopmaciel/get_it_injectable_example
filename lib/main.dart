import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_injectable_example/app/core/service_locator.dart';
import 'package:get_it_injectable_example/app/models/random_01_factory_model.dart';
import 'package:get_it_injectable_example/app/models/random_02_singleton_model.dart';
import 'package:get_it_injectable_example/app/models/random_03_lazy_singleton_model.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int id = 0;
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$id'),
            Text('$name'),
            const Divider(),
            TextButton(
              child: const Text('Factory'),
              onPressed: () {
                final instance = GetIt.I.get<RandomFactoryModel>();
                setState(() {
                  id = instance.id;
                  name = instance.name;
                });
              },
            ),
            const Divider(),
            TextButton(
              child: const Text('Singleton'),
              onPressed: () {
                final instance = GetIt.I.get<RandomSingletonModel>();
                setState(() {
                  id = instance.id;
                  name = instance.name;
                });
              },
            ),
            const Divider(),
            TextButton(
              child: const Text('LazySingleton'),
              onPressed: () {
                final instance = GetIt.I.get<RandomLazySingletonModel>();
                setState(() {
                  id = instance.id;
                  name = instance.name;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
