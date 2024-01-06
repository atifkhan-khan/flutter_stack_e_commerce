import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_stack_e_comerce/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('FirebaseServicesServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
