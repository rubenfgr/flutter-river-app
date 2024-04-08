import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final randomNamesProvider = StreamProvider.autoDispose<String>((ref) async* {
  await for (final String name in RandomNamesGenerator.generateNamesStream()) {
    yield name;
  }
});
