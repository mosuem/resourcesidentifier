import 'package:meta/meta.dart' show ResourceIdentifier;

class SomeClass {
  @ResourceIdentifier('SomeClass metadata')
  static int calculate(int input) {
    return input + 1;
  }
}

class SomeOtherClass {
  @ResourceIdentifier('SomeOtherClass metadata')
  static int calculate2({required String input}) {
    return input.length + 2;
  }
}

class SomeUnusedClass {
  @ResourceIdentifier('SomeUnusedClass metadata')
  static int calculate3() {
    return 2;
  }
}
