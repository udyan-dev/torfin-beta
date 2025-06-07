import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torfin/core/constants/app_constants.dart';
import 'package:torfin/core/theme/app_theme.dart';
import 'package:torfin/core/utils/app_extensions.dart';
import 'package:torfin/gen/fonts.gen.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../shared/widgets/text_widget.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  static const _baseTextStyle = TextStyle(
    fontFamily: FontFamily.lexend,
    fontSize: 10.0,
    fontWeight: FontWeight.w600,
  );

  late final TabController _controller;
  late final ValueNotifier<int> _currentIndexNotifier;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _currentIndexNotifier = ValueNotifier<int>(0);
    _controller = TabController(
      length: 4,
      vsync: this,
      animationDuration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _currentIndexNotifier.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    if (_currentIndexNotifier.value != index) {
      _currentIndexNotifier.value = index;
    }
  }

  @pragma('vm:prefer-inline')
  TextStyle _getLabelStyle(Color color) =>
      _baseTextStyle.copyWith(color: color);

  static final _tabItems = <_TabItemData>[
    _TabItemData(0, Assets.images.search, AppConstants.searchLabel),
    _TabItemData(1, Assets.images.download, AppConstants.downloadsLabel),
    _TabItemData(2, Assets.images.favorite, AppConstants.favoriteLabel),
    _TabItemData(3, Assets.images.settings, AppConstants.settingsLabel),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = context.theme;

    final boxDecoration = BoxDecoration(
      border: Border(top: BorderSide(color: theme.borderInteractive, width: 3)),
    );

    return RepaintBoundary(
      child: ColoredBox(
        color: theme.layer01,
        child: TabBar(
          controller: _controller,
          onTap: _onTabTapped,
          physics: const NeverScrollableScrollPhysics(),
          dividerHeight: 0.0,
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: boxDecoration,
          labelStyle: _getLabelStyle(theme.textPrimary),
          unselectedLabelStyle: _getLabelStyle(theme.textOnColorDisabled),
          labelPadding: const EdgeInsets.only(top: 2),
          tabs: _tabItems
              .map(
                (item) => _OptimizedTabItem(
                  key: ValueKey(item.index),
                  index: item.index,
                  assetPath: item.asset.path,
                  label: item.label,
                  currentIndexNotifier: _currentIndexNotifier,
                  theme: theme,
                ),
              )
              .toList(growable: false),
        ),
      ),
    );
  }
}

class _OptimizedTabItem extends StatelessWidget {
  const _OptimizedTabItem({
    super.key,
    required this.index,
    required this.assetPath,
    required this.label,
    required this.currentIndexNotifier,
    required this.theme,
  });

  final int index;
  final String assetPath;
  final String label;
  final ValueNotifier<int> currentIndexNotifier;
  final AppColorTheme theme;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentIndexNotifier,
      builder: (context, currentIndex, child) {
        final isSelected = currentIndex == index;
        final color = isSelected
            ? theme.iconPrimary
            : theme.iconOnColorDisabled;
        final colorFilter = color.colorFilter;

        return Tab(
          iconMargin: EdgeInsets.zero,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                assetPath,
                colorFilter: colorFilter,
                width: 20.0,
                height: 20.0,
                clipBehavior: Clip.none,
              ),
              TextWidget(text: label, overflow: TextOverflow.clip),
            ],
          ),
        );
      },
    );
  }
}

@immutable
class _TabItemData {
  const _TabItemData(this.index, this.asset, this.label);

  final int index;
  final SvgGenImage asset;
  final String label;
}
