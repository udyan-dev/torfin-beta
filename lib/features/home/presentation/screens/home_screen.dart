import 'package:flutter/material.dart';

import '../../../../shared/mixins/network_dialog_mixin.dart';
import '../widgets/bottom_navigation_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with NetworkDialogMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(bottomNavigationBar: BottomNavigationWidget());
  }
}
