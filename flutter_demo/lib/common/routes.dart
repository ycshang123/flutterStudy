import 'package:flutter/material.dart';

import '../bottom/index.dart';
import '../bottom/sample_page.dart';
import '../sample/plant_shop.dart';
import '../sample/timeline_page.dart';
import '../widget/stateful/image_widget.dart';
import '../widget/stateful/pageviewcontrol.dart';
import '../widget/stateful/silverappbar_widget.dart';
import '../widget/stateless/actionchip_widget.dart';
import '../widget/stateless/chip_widget.dart';
import '../widget/stateless/choicechip_widget.dart';
import '../widget/stateless/circleavatar_widget.dart';
import '../widget/stateless/container_widget.dart';
import '../widget/stateless/filterchip.dart';
import '../widget/stateless/gesturedetector_widget.dart';
import '../widget/stateless/gridview_widget.dart';
import '../widget/stateless/inputchip_widget.dart';
import '../widget/stateless/listview_widget.dart';
import '../widget/stateless/pageview_widget.dart';
import '../widget/stateless/progress_widget.dart';
import '../widget/stateless/singlechildscrollview_widget.dart';
import '../widget/stateless/text_widget.dart';
import '../widget/stateless/theme_widget.dart';
import '../widget/stateless/useraccountdrawerheader_widget.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/index': (context) => const Index(),
  '/sample-page': (context) => const SamplePage(),
  // 无状态组件导航
  '/container': (context) => const ContainerWidget(),
  '/text': (context) => const TextWidget(),
  '/progress': (context) => const ProgressWidget(),
  '/listview': (context) => const ListViewWidget(),
  '/gridview': (context) => const GridViewWidget(),
  '/singlechildscrollview': (context) => const SingleChildScrollViewWidget(),
  '/pageview': (context) => const PageViewWidget(),
  '/pageviewcontrol': (context) => const PageViewControl(),
  '/circleavatar': (context) => const CircleAvatarWidget(),
  '/chip': (context) => const ChipWidget(),
  '/inputchip': (context) => const InputChipWidget(),
  '/filterchip': (context) => const FilterChipWidget(),
  '/choicechip': (context) => const ChoiceChipWidget(),
  '/actionchip': (context) => const ActionChipWidget(),
  '/theme': (context) => const ThemeWidget(),
  '/gesturedetector': (context) => const GestureDetectorWidget(),
  '/useraccountdrawerheader': (context) =>
      const UserAccountDrawerHeaderWidget(),
  // 有状态组件导航
  '/image': (context) => const ImageWidget(),
  '/silverappbar': (context) => const SilverAppBarWidget(),
  // 示例导航
  '/plant-shop': (context) => const PlantShop(),
  '/timeline': (context) => const TimelinePage(),
};