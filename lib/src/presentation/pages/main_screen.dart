import 'package:dtba/component/responsive.dart';
import 'package:dtba/src/presentation/widgets/dashboard_widget.dart';
import 'package:dtba/src/presentation/page_controller/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:dtba/src/presentation/widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      key: context.read<MainScreenController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text("fdf",style: TextStyle(color: Colors.white),),
            //We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}