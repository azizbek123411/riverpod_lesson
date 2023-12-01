import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/main.dart';

class User extends Equatable {
  final String name;
  final String address;

  const User(this.name, this.address);

  @override
  List<Object?> get props => [name, address];
}

class FamilyMultipleHome extends ConsumerWidget {
  const FamilyMultipleHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   final text= ref.watch(
      nmeProvider(
        const User('Aziz', "Tashkent"),
      ),
    );
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
