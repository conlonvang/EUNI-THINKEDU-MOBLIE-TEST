import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class ChiNhanhView extends StatefulWidget {
  const ChiNhanhView({super.key});

  @override
  State<ChiNhanhView> createState() => _ChiNhanhViewState();
}

class _ChiNhanhViewState extends State<ChiNhanhView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        alignCenter: true,
        showSearchAndFilter: true,
        title: 'Chi nhánh',
      ),
      body: Center(
        child: Text('Chi nhánh'),
      ),
    );
  }
}
