import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/NotsViewBody.dart';
class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotsViewBody(),
    );
  }
}

