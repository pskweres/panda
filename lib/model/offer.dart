import 'package:panda/model/banks.dart';

class Offer {
  String title;
  String description;
  BankBrand bank;

  Offer(this.title, this.description, this.bank);

  Offer.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    bank = BankBrandNameParser().parse(json['bank']);
  }
}