import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class MoRongView extends StatefulWidget {
  const MoRongView({super.key});

  @override
  State<MoRongView> createState() => _MoRongViewState();
}

class _MoRongViewState extends State<MoRongView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        alignCenter: true,
        title: 'Mở rộng',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Core',
                  style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KhungChucNang(
                  icon: Icons.dashboard,
                  title: 'Chức năng 1',
                  onTap: () {},
                ),
                KhungChucNang(
                  icon: Icons.settings,
                  title: 'Chức năng 2',
                  onTap: () {},
                ),
                KhungChucNang(
                  icon: Icons.notifications,
                  title: 'Chức năng 3',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 16.0.h),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CRM',
                  style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KhungChucNang(
                  icon: Icons.help,
                  title: 'Chức năng 4',
                  onTap: () {},
                ),
                KhungChucNang(
                  icon: Icons.feedback,
                  title: 'Chức năng 5',
                  onTap: () {},
                ),
                KhungChucNang(
                  icon: Icons.account_circle,
                  title: 'Chức năng 6',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 16.0.h),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Khác',
                  style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KhungChucNang(
                  icon: Icons.event,
                  title: 'Chức năng 7',
                  onTap: () {},
                ),
                KhungChucNang(
                  icon: Icons.store,
                  title: 'Chức năng 8',
                  onTap: () {},
                ),
                KhungChucNang(
                  icon: Icons.camera,
                  title: 'Chức năng 9',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 16.0.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KhungChucNang(
                  icon: Icons.map,
                  title: 'Chức năng 10',
                  onTap: () {},
                ),
                KhungChucNang(
                  icon: Icons.access_alarm,
                  title: 'Chức năng 11ạaja',
                  onTap: () {},
                ),
                KhungChucNang(
                  icon: Icons.dashboard,
                  title: 'Chức năng 12',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
