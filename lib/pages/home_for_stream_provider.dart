import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/main.dart';

class StreamHome extends ConsumerWidget {
  const StreamHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamData = ref.watch(streamProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream provider'),
      ),
      body: streamData.when(data: ((data) {
        Center(
          child: Text(
            data.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        );
      }), error: (error, st) {
        Center(
          child: AlertDialog(
            content: Text(
              error.toString(),
            ),
          ),
        );
      }, loading: () {
        const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
