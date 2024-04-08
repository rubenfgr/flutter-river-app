import 'package:random_name_generator/random_name_generator.dart';

class RandomNamesGenerator {
  static String generateFullName() {
    final RandomNames randomNames = RandomNames(Zone.spain);
    final fullName = randomNames.fullName();
    //print(fullName);
    return fullName;
  }

  static Stream<String> generateNamesStream() {
    final RandomNames randomNames = RandomNames(Zone.spain);
    return Stream.periodic(Duration(seconds: 2), (i) {
      print('Stream $i new value');
      return randomNames.fullName();
    });
  }
}
