import 'package:panda/model/banks.dart';

class BankLogoProvider {
  String getAssetPath(BankBrand brand) {
    switch (brand) {
      case BankBrand.fairBank:
        return "assets/pko.svg";
      case BankBrand.unfairBank:
        return "assets/mbank.svg";
    }
    return null;
  }
}
