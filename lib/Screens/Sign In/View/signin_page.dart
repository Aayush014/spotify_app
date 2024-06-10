import 'package:flutter/material.dart';

import 'components/Sign In/signin_page_app_bar.dart';
import 'components/Sign In/signin_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loginAppBar(context),
      body: const LoginBody()
    );
  }
}
