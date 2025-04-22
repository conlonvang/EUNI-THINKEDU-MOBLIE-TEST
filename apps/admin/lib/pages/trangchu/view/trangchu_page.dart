import 'package:admin/pages/baocao/view/index.dart';
import 'package:admin/pages/chinhanh/view/index.dart';
import 'package:admin/pages/morong/view/index.dart';
import 'package:admin/pages/nhanvien/view/index.dart';
import 'package:admin/pages/trangchu/view/index.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class TrangchuPage extends StatefulWidget {
  const TrangchuPage({super.key});

  @override
  State<TrangchuPage> createState() => _TrangchuPageState();
}

class _TrangchuPageState extends State<TrangchuPage> {
  final PersistentTabController _controller = PersistentTabController();

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'Trang chủ',
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.textSecondary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.business),
        title: 'Chi nhánh',
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.textSecondary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.people),
        title: 'Nhân viên',
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.textSecondary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.bar_chart),
        title: 'Báo cáo',
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.textSecondary,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.dashboard_customize),
        title: 'Mở rộng',
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.textSecondary,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => PersistentTabView(
          context,
          controller: _controller,
          screens: const [
            TrangChuView(),
            ChiNhanhView(),
            NhanVienView(),
            BaoCaoView(),
            MoRongView(),
          ],
          items: _navBarsItems(),
          navBarStyle: NavBarStyle.style3,
        ),
      ),
    );
  }
}
