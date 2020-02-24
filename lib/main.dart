import 'package:flutter/material.dart';
import 'package:panda/model/offer.dart';

import 'view/offer_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: OfferList(offer: Offer("PROMO", "MONEY FOR FREE"),),
    );
  }
}
