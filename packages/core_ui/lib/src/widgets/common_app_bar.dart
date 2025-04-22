import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

/// Hỗ trợ hiển thị avatar người dùng, nút điều hướng trái (leading),
/// các nút chức năng bên phải (actions), cũng như thanh tìm kiếm và lọc.
class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// - [title]: tiêu đề của AppBar.
  /// - [leading]: widget ở vị trí bên trái (thường là nút back hoặc menu).
  /// - [userAvatarUrl]: đường dẫn ảnh avatar hiển thị bên cạnh tiêu đề.
  /// - [actions]: danh sách widget bên phải (icon button,...).
  /// - [onSearchChanged]: callback gọi khi nội dung tìm kiếm thay đổi.
  /// - [onFilterPressed]: callback gọi khi nhấn nút lọc.
  /// - [showSearchAndFilter]: có hiển thị ô tìm kiếm và lọc hay không.
  /// - [alignCenter]: căn giữa tiêu đề và avatar.
  const CommonAppBar({
    required this.title,
    this.leading,
    this.userAvatarUrl,
    this.actions,
    this.onSearchChanged,
    this.onFilterPressed,
    this.showSearchAndFilter = false,
    this.alignCenter = false,
    super.key,
  });

  /// Widget ở phía bên trái .
  final Widget? leading;

  /// Tiêu đề AppBar.
  final String title;

  /// URL ảnh đại diện người dùng.
  final String? userAvatarUrl;

  /// Danh sách các widget bên phải .
  final List<Widget>? actions;

  /// Callback khi thay đổi nội dung tìm kiếm.
  final void Function(String)? onSearchChanged;

  /// Callback khi nhấn nút lọc.
  final VoidCallback? onFilterPressed;

  /// Hiển thị thanh tìm kiếm và lọc hay không.
  final bool showSearchAndFilter;

  /// Có căn giữa tiêu đề với avatar và hành động hay không.
  final bool alignCenter;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.appBarColor,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
      title: alignCenter
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 56.w,
                  child: leading ?? const SizedBox(),
                ),
                Expanded(
                  child: Center(child: _buildTitle()),
                ),
                SizedBox(
                  width: 56.w,
                  child: actions != null && actions!.isNotEmpty
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: actions!,
                        )
                      : const SizedBox(),
                ),
              ],
            )
          : _buildTitle(),
      leading: alignCenter ? null : leading,
      actions: alignCenter ? null : actions,
      bottom: showSearchAndFilter
          ? PreferredSize(
              preferredSize: const Size.fromHeight(56),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    // Ô tìm kiếm
                    Expanded(
                      child: TextField(
                        onChanged: onSearchChanged,
                        decoration: InputDecoration(
                          hintText: 'Tìm kiếm...',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: AppColors.textSecondary,
                            ),
                          ),
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: AppColors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    InkWell(
                      onTap: onFilterPressed,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.textPrimary,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.filter_alt, size: 24.sp),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
    );
  }

  Widget _buildTitle() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (userAvatarUrl != null && userAvatarUrl!.isNotEmpty)
          CircleAvatar(
            radius: 14,
            backgroundImage: NetworkImage(userAvatarUrl!),
          ),
        if (userAvatarUrl != null && userAvatarUrl!.isNotEmpty) SizedBox(width: 8.w),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        kToolbarHeight + (showSearchAndFilter ? 56 : 0),
      );
}
