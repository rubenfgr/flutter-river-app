import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/random_names_provider.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final names = ref.watch(randomNamesProvider);

    // if (names.hasValue) {
    //   return Scaffold(
    //       appBar: AppBar(
    //         title: const Text('Stream Provider'),
    //       ),
    //       body: Center(
    //         child: Text('hasValue'),
    //       ));
    // }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Stream Provider'),
        ),
        body: names.when(
          data: (data) => Center(
            child: Text(data),
          ),
          error: (error, stackTrace) => Text('ERROR: $error'),
          loading: () => const CircularProgressIndicator(),
        ));
  }
}
