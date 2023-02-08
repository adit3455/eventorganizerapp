import 'package:eventorganizerapp/screens/export_screen.dart';
import 'package:eventorganizerapp/screens/myplan_screen.dart';
import 'package:eventorganizerapp/screens/profile_screen.dart';
import 'package:eventorganizerapp/screens/vendor_screen.dart';
import 'package:flutter/material.dart';

import '../blocs/export_blocs.dart';
import '../utils/export_utils.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomePageScreen(),
      const VendorScreen(),
      const MyPlanScreen(),
      const ProfileScreen(),
    ];

    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Dashboard"),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.cartArrowDown)),
              const SizedBox(width: 10.0),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_active)),
              const SizedBox(width: 10.0),
              IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
              const SizedBox(width: 10.0),
            ],
          ),
          body: pages[(state as BottomNavInitial).index],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            showUnselectedLabels: true,
            elevation: 5.0,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle:
                const TextStyle(color: Colors.black, fontSize: 15.0),
            currentIndex: (state).index,
            onTap: (value) {
              context.read<BottomNavBloc>().add(OnSelectedIndex(value: value));
            },
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      child: const Icon(Icons.home)),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      child: const Icon(Icons.assignment)),
                  label: "Vendor"),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      child: const Icon(Icons.date_range)),
                  label: "My Plan"),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      child: const Icon(Icons.person)),
                  label: "Profile"),
            ],
          ),
        );
      },
    );
  }
}
