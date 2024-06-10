import 'package:flutter/material.dart';
import 'package:spotify_app/Screens/Sign%20In/View/components/same_appbar.dart';

import 'components/Personal Details/personal_details_body.dart';
import 'components/Personal Details/personal_details_bottombar.dart';
import 'components/Personal Details/personal_details_float_button.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sameAppBar(context),
      body: personalDetailsBody(context),
      floatingActionButton: perInfoFloatButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: personalDetailBottomBar(),
    );
  }
}
