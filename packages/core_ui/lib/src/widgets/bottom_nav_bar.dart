import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

/// Widget thanh điều hướng dưới tùy chỉnh sử dụng [PersistentTabView].
///
/// Hiển thị các tab tương ứng với từng màn hình riêng biệt.
/// Thích hợp dùng trong ứng dụng có điều hướng dưới dạng cố định.
class CustomBottomNavBar extends StatelessWidget {
  /// Tạo một [CustomBottomNavBar].
  ///
  /// [controller] là bộ điều khiển để quản lý trạng thái tab hiện tại.
  /// [screens] là danh sách các màn hình tương ứng với từng tab.
  /// [items] là danh sách các biểu tượng điều hướng ở dưới.
  const CustomBottomNavBar({
    required this.controller,
    required this.screens,
    required this.items,
    super.key,
  });

  /// Bộ điều khiển tab, quản lý chỉ số tab được chọn.
  final PersistentTabController controller;

  /// Danh sách các màn hình sẽ hiển thị khi chọn từng tab.
  final List<Widget> screens;

  /// Danh sách các item điều hướng hiển thị dưới thanh nav.
  final List<PersistentBottomNavBarItem> items;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: screens,
      items: items,
      navBarStyle: NavBarStyle.style3,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(12),
        colorBehindNavBar: AppColors.textSecondary,
      ),
    );
  }
}
