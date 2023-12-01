import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/main.dart';
class FamilyHome extends ConsumerWidget {
  const FamilyHome({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final namee=ref.watch(nameProvider('Teacher'));
    return Scaffold(
      body: Center(
        child: Text(namee,style: const TextStyle(
          color: Colors.red
        ),),
      ),
    );
  }
}
