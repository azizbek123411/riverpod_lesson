import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'package:riverpod_lesson/statenotifier/counter_demo.dart';
import 'package:riverpod_lesson/pages/home_page_fort_stateless.dart';

import 'family_modifier_multiple/user.dart';

// final nameProvider=Provider<String>((ref){
//   return "Levi's";
// });  ===>>>  Name provider
final countProvider = StateNotifierProvider((ref2) => CounterDemo());
final counterProvider = StateProvider<double>((ref) {
  return 0;
});

/////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////

final streamProvider = StreamProvider<int>((ref) {
  return Stream.periodic(
    const Duration(seconds: 2),
    ((computationCount) => 2),
  );
});

////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////

final nameProvider=Provider.family<String,String>((ref,name){
  return "Hello $name";
});

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}
/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////

final nmeProvider=Provider.family<String,User>((ref,user){
  return " Name is ${user.name} and adress is ${user.address}";
});

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FamilyMultipleHome(),
      routes: {
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}
