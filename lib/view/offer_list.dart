import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panda/model/offer.dart';
import 'package:panda/service/offers_service.dart';
import 'package:panda/view/logo_provider.dart';
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
        title: Text("Offers"),
      ),
      body: FutureBuilder<List<Offer>>(
          future: offers,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return buildOfferListItem(snapshot.data[index]);
                  });
            } else {
              return Text("not yet loaded!");
            }
          }),
    );
  }

  Card buildOfferListItem(Offer offer) {
    return Card(
      child: ListTile(
        title: Text(offer.title),
        subtitle: Text(offer.description),
        leading: SizedBox(
          width: 50,
          child: SvgPicture.asset(
            BankLogoProvider().getAssetPath(offer.bank),
          ),
        ),
      ),
    );
  }
}
