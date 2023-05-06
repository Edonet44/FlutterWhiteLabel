import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goodgo/widgets/appbar/widgt_home_appbar.dart';
import 'package:goodgo/widgets/drawer/widgt_navDrawer.dart';


//Screen dei Badges

class TracceScreen extends ConsumerWidget {
  const TracceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: const Nav_drawer(),
      body: Container(
        child: Column(
          children: [
            HomeAppBar(scaffoldKey: _scaffoldKey),
            Text('Hello tracce')
          ],
        ),
      ),
    );
  }
}
