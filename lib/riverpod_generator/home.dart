import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home.g.dart';


// final nameProvider=Provider<String>((ref)=>'Aziz');
@Riverpod(keepAlive: true)
String name(NameRef ref){
  return 'Aziz';
}

class Home extends ConsumerWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final name=ref.watch(nameProvider);
    return Scaffold(
      body: Center(
        child: Text(name,style: const TextStyle(fontSize: 30),),
      ),
    );
  }
}
