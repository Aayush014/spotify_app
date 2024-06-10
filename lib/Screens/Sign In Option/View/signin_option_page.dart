import 'package:flutter/material.dart';

import 'components/signin_opt_body.dart';

class SpotifyLogin extends StatelessWidget {
  const SpotifyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: loginOptBody(context),
    );
  }
}