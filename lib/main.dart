import 'package:flutter/material.dart';
import 'package:panda/service/offers_service.dart';
import 'package:provider/provider.dart';

import 'view/offer_list.dart';

void main() => runApp(MultiProvider(
      providers: [
        Provider(create: (context) => OffersService()),
      ],
      child: MyApp(),
    ),);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: OfferList(),
    );
  }
}
