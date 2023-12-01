import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/main.dart';
class DemoPage extends ConsumerWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref2) {
    final countt=ref2.watch(countProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(countt.toString()),
            IconButton(onPressed: (){
              ref2.read(countProvider.notifier).counting();
            }, icon:const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
