import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_lesson/main.dart';
import 'package:riverpod_lesson/statenotifier/notifer_page.dart';

class MyHome extends StatefulHookConsumerWidget {
  const MyHome({super.key});

  @override
  ConsumerState<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends ConsumerState<MyHome> {
  @override
  Widget build(BuildContext context) {
    final name = useState(0);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                name.value -= name.value;
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.black,
              ))
        ],
        title: const Text('Riverpod lesson'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              name.value.toString(),
            ),
            IconButton(
                onPressed: () {
                  name.value++;
                },
                icon: const Icon(
                  Icons.add,
                  size: 30,
                )),
            IconButton(
              onPressed: () {
                name.value--;
              },
              icon: const Icon(
                Icons.remove,
                size: 30,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>const  DemoPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }
}
