import 'package:animasyon_app/fade_animationstest.dart';
import 'package:flutter/material.dart';

void main() {
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  bool flag = true;
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
            FadeInAnimation(
              delay: 2.2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: flag ? true : false,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(18),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_outlined))),
                ),
              ),
            ),
            FadeInAnimation(
              delay: 4.2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: flag ? true : false,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(18),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_outlined))),
                ),
              ),
            ),
            FadeInAnimation(
                delay: 2.4,
                child: TextButton(onPressed: () {}, child: Text("GİRİŞ YAP")))
          ],
        ),
      ),
    );
  }
}
