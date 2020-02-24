import 'package:flutter/material.dart';
import 'package:panda/model/offer.dart';

class OfferList extends StatefulWidget {

  final Offer offer;

  OfferList({Key key, this.offer}) : super(key: key);

  @override
  _OfferListState createState() => _OfferListState();
}

class _OfferListState extends State<OfferList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.offer.title),
      ),
    );
  }
}
