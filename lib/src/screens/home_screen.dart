import 'package:designs/src/widgets/card_table.dart';
import 'package:designs/src/widgets/page_title.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [Background(), _HomeBody()]),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}
