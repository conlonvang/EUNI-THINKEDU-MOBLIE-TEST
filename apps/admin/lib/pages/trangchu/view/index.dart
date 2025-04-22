import 'package:admin/pages/trangchu/view/drawer_custom.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class TrangChuView extends StatefulWidget {
  const TrangChuView({super.key});

  @override
  State<TrangChuView> createState() => _TrangChuViewState();
}

class _TrangChuViewState extends State<TrangChuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: 'Phạm Văn A',
        userAvatarUrl: 'https://i.pravatar.cc/150?img=3',
      ),
      drawer: const DrawerCustom(),
      body: const Column(),
    );
  }
}
