import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.primary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80.w,
                  height: 80.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(AppImages.logo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Xin chào, Phạm Văn A',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.dashboard),
            title: Text(
              'Dashboard',
            ),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Cài đặt'),
          ),
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Ngôn ngữ'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Đăng xuất'),
          ),
        ],
      ),
    );
  }
}
