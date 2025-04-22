import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

/// Widget hiển thị một khung chức năng với biểu tượng và tiêu đề.
///
/// Khi người dùng nhấn vào khung, hàm `onTap` sẽ được gọi.
class KhungChucNang extends StatelessWidget {
  /// Hàm tạo [KhungChucNang].
  ///
  /// - [icon]: Biểu tượng hiển thị trong khung.
  /// - [title]: Tiêu đề hiển thị dưới biểu tượng.
  /// - [onTap]: Hàm được gọi khi nhấn vào khung.
  const KhungChucNang({
    required this.icon,
    required this.title,
    required this.onTap,
    super.key,
  });

  /// Biểu tượng đại diện cho chức năng.
  final IconData icon;

  /// Tiêu đề hiển thị dưới biểu tượng.
  final String title;

  /// Hàm xử lý khi nhấn vào khung chức năng.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100.0.w,
        height: 100.0.w,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30.0.sp,
              color: AppColors.primary,
            ),
            SizedBox(height: 8.0.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.0.sp,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
