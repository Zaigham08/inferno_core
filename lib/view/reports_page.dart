import 'package:flutter/material.dart';

import '../res/widgets/appBar components/my_appbar.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: "Reports"),
      body: const Center(
        child: Text('ReportsPage'),
      ),
    );
  }
}
