import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:panda/model/offer.dart';

class OffersService {

  List<Offer> _offers;
  
  Future<List<Offer>> getAll() async {
    if (_offers == null) {
      await _loadOffers();
    }
    return _offers;
  }

  _loadOffers() async {
    String rawOffers = await rootBundle.loadString('data/offers.json');
    _offers = (jsonDecode(rawOffers) as List).map((f) => Offer.fromJson(f)).toList();
  }
}