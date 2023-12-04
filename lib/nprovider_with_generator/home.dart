import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/notifier_notifierprovider/counter_notifier.dart';
class MyHomee extends ConsumerWidget {
  const MyHomee({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final counter=ref.watch(counterNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Notifier'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            counter.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                ref.read(counterNotifierProvider.notifier).increment();
              }, child: const Icon(Icons.add),),
              ElevatedButton(onPressed: (){
                ref.read(counterNotifierProvider.notifier).decrement();
              }, child: const Icon(Icons.remove),),
            ],
          )
        ],
      ),
    );
  }
}
