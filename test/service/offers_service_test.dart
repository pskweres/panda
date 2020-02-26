import 'package:flutter_test/flutter_test.dart';
import 'package:panda/service/offers_service.dart';

void main() {
  test('Test loading offers', () {
    TestWidgetsFlutterBinding.ensureInitialized();
    final offersService = OffersService();

    offersService.getAll().then((offers) {
      expect(offers.length, greaterThan(0));
    });
  });
}
