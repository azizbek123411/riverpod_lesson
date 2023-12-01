import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/statenotifier/counter_demo.dart';
final counterProvider11=StateNotifierProvider((ref){
  return CounterDemo();
});
class AutoHome extends ConsumerWidget {
  const AutoHome({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final kounter=ref.watch(counterProvider11);
    return Scaffold(
      body: Center(
        child: Text(kounter.toString(),style: const TextStyle(
          fontSize: 20
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read(counterProvider11.notifier).counting();
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}
