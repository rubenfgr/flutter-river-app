import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/pokemon_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonId = ref.watch(pokemonIdProvider);
    final pokemonName = ref.watch(pokemonNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon $pokemonId'),
      ),
      body: Center(
        child: pokemonName.when(
            data: (v) => Text(v),
            error: (error, stackTrace) => Text('ERROR: $error'),
            loading: () => const CircularProgressIndicator()),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {
                ref
                    .read(pokemonIdProvider.notifier)
                    .update((state) => state + 1);
              },
              child: const Icon(Icons.plus_one)),
          const SizedBox(height: 10),
          FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                ref
                    .read(pokemonIdProvider.notifier)
                    .update((state) => state - 1);
              },
              child: const Icon(Icons.exposure_minus_1)),
        ],
      ),
    );
  }
}
