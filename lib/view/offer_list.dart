import 'package:flutter/material.dart';
import 'package:panda/model/offer.dart';
import 'package:panda/service/offers_service.dart';
import 'package:provider/provider.dart';

class OfferList extends StatefulWidget {

  OfferList({Key key}) : super(key: key);

  @override
  _OfferListState createState() => _OfferListState();
}

class _OfferListState extends State<OfferList> {

  Future<List<Offer>> offers;

  @override
  void initState() {
    super.initState();
    offers = Provider.of<OffersService>(context, listen: false).getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<List<Offer>>(
          future: offers,
          builder: (BuildContext context, AsyncSnapshot<List<Offer>> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data[0].title);
            } else {
              return Text("not yet loaded!");
            }
          },
        ),
      ),
    );
  }
}
