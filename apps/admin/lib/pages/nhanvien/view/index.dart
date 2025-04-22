import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class NhanVienView extends StatefulWidget {
  const NhanVienView({super.key});

  @override
  State<NhanVienView> createState() => _NhanVienViewState();
}

class _NhanVienViewState extends State<NhanVienView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        alignCenter: true,
        showSearchAndFilter: true,
        title: 'Nhân viên',
      ),
      body: Center(
        child: Text('Nhân viên'),
      ),
    );
  }
}
