import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/entities/user.entity.dart';
import 'package:flutter_app_test/presentation/widgets/detail/detail_body.dart';
import 'package:flutter_app_test/presentation/widgets/detail/detail_picture.dart';
import 'package:flutter_app_test/presentation/widgets/detail/detail_row.dart';
import 'package:flutter_app_test/presentation/widgets/detail/detail_title.dart';

class DetailPage extends StatelessWidget {
  final User user;
  final int index;

  DetailPage({required this.user, required this.index});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(tr('detail.title')),
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: () => Navigator.pop(context)),
        ),
        body: ListView(
          children: [
            Center(
                child: DetailPicture(
              picture: user.picture,
              index: index,
            )),
            DetailBody(children: [
              DetailTitle(title: tr('detail.civil_state.title')),
              DetailRow(label: tr('detail.civil_state.civility'), value: user.title),
              DetailRow(label: tr('detail.civil_state.last_name'), value: user.lastName),
              DetailRow(label: tr('detail.civil_state.first_name'), value: user.firstName),
              DetailRow(label: tr('detail.civil_state.gender'), value: user.gender),
              DetailRow(label: tr('detail.civil_state.dob'), value: DateFormat(tr('formatDate')).format(DateTime.parse(user.dob))),
              DetailRow(label: tr('detail.civil_state.age'), value: user.age.toString()),
              DetailRow(label: tr('detail.civil_state.national'), value: user.nat)
            ]),
            DetailBody(children: [
              DetailTitle(title: tr('detail.contact.title')),
              DetailRow(label: tr('detail.contact.email'), value: user.email),
              DetailRow(label: tr('detail.contact.phone'), value: user.phone),
              DetailRow(label: tr('detail.contact.number'), value: user.streetNumber.toString()),
              DetailRow(label: tr('detail.contact.street'), value: user.street),
              DetailRow(label: tr('detail.contact.postcode'), value: user.postcode.toString()),
              DetailRow(label: tr('detail.contact.city'), value: user.city),
              DetailRow(label: tr('detail.contact.state'), value: user.state),
              DetailRow(label: tr('detail.contact.country'), value: user.country),
            ])
          ],
        ),
      ),
    );
  }
}
