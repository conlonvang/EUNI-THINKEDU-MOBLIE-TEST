import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class BaoCaoView extends StatefulWidget {
  const BaoCaoView({super.key});

  @override
  State<BaoCaoView> createState() => _BaoCaoViewState();
}

class _BaoCaoViewState extends State<BaoCaoView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        alignCenter: true,
        showSearchAndFilter: true,
        title: 'Báo cáo',
      ),
      body: Center(
        child: Text('Báo cáo'),
      ),
    );
  }
}
