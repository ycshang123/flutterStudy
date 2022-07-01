import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';

final data = <dynamic>[
  Colors.blue[50],
  Colors.blue[100],
  Colors.blue[200],
  Colors.blue[300],
  Colors.blue[400],
  Colors.blue[500],
  Colors.blue[600],
  Colors.blue[700],
  Colors.blue[800],
  Colors.blue[900],
];

String colorString(dynamic color) =>
    "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

final statelessList = <ContainerInfo>[
  ContainerInfo('Container', '用于容纳单个子组件的容器组件。集成了若干个单子组件的功能，如内外边距、形变、装饰、约束等。',
      '/container'),
  ContainerInfo(
      'Text', '用于容纳单个子组件的容器组件,拥有的属性非常多，足够满足适应需求，核心样式由style属性控制。', '/text'),
  ContainerInfo(
      'ListView',
      '可容纳多个子组件，可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性。',
      '/listview'),
  ContainerInfo(
      'GridView',
      '以网格的形式容纳多个组件,可以通过count、extent、custom、builder等构造，有内边距、是否反向、滑动控制等属性。',
      '/gridview'),
  ContainerInfo('SingleChildScrollView', '使一个组件具有滑动的效果，可指定滑动的方向、是否反向、滑动控制器等属性。',
      '/singlechildscrollview'),
  ContainerInfo(
      'PageView', '容纳多个组件的页面，可对它们进行滑动切换，指定滑动方向、是否反向、滑动控制器等属性。', '/pageview'),
  ContainerInfo(
      'CircleAvatar', '可将一张图片变成圆形，中间可以放置一个组件。可指定半径、前景色、背景色等。', '/circleavatar'),
  ContainerInfo('Chip', '一个横向的圆边小条，可以包含左中右三个组件。可以指定颜色、阴影色和点击事件。', '/chip'),
  ContainerInfo('InputChip', '和Chip组件类似，集成了点击、删除、选择事件为一体，注意：点击事件和选择事件不能同时存在。',
      '/inputchip'),
  ContainerInfo('FilterChip', '和Chip组件类似，具有选中与否的属性和选中事件，当选中时左侧组件上层会被 √ 遮罩',
      '/filterchip'),
  ContainerInfo(
      'ChoiceChip', '和Chip组件类似，有一些选择的属性，可以指定选中时的颜色，阴影色和选择事件。', '/choicechip'),
  ContainerInfo(
      'ActionChip', '和Chip组件类似，有一些点击的熟悉，可以指定点击时的阴影深浅、点击事件。', '/actionchip'),
  ContainerInfo(
      'Theme', '可通过Theme.of获取ThemeData对象，也可以指定主题应用于Theme的后代组件', '/theme'),
  ContainerInfo('GestureDetector', '组件手势事件的检测器，可接受长按、双击、按下、松开、移动等事件，并可获取触点信息',
      '/gesturedetector'),
  ContainerInfo(
      'UserAccountDrawerHeader',
      'Flutter提供的一个通用展示结构，相应位置可插入组件，很方便地对特定条目，常用于Drawer中',
      '/useraccountdrawerheader'),
  ContainerInfo('ButtonWidget', '各类Button组件', '/button'),
  ContainerInfo('CardWidget', '卡片组件，基于Material组件实现，用于将单个组件卡片化。', '/card'),
  ContainerInfo(
      'VisiblityWidget', '显隐组件，控制一个组件显示或隐藏，可设置隐藏后的占位组件。', '/visiblity'),
  ContainerInfo("ListTile",
      "Flutter提供的一个通用列表条目结构，为左中右接口，相应位置可插入组件，可以很方便地应对特定的条目。", '/listtile'),
  ContainerInfo(
      'CheckboxListTile',
      'Flutter提供的一个通用列表条目结构，为左中结构,尾部是一个CheckBox，相应位置可以插入组件，可以很方便地应对特定的条目。',
      '/checkboxlisttile'),
  ContainerInfo(
      "SwitchListTileWidget",
      "Flutter提供的一个通用列表条目结构,为左中结构，尾部是一个Switch,相应位置可插入组件，可以方便地应对特定的条目",
      '/switchlisttile'),
  ContainerInfo(
      "RadioListTileWidget",
      "Flutter提供的一个通用列表条目结构,为左中结构，尾部是一个Radio,相应位置可插入组件，可以方便地应对特定的条目。",
      "/radiolisttile"),
  ContainerInfo("GridTileWidget", " Flutter提供的一个通用列表条目结构可指定头、尾、子组件，常用于网格列表。",
      "/gridtile"),
  ContainerInfo("AboutListTileWidget",
      " 一个点击条目,点击时可以弹出应用相关信息，可指定应用图标、应用名、应用版本号等信息和内部的子组件列表", "/aboutlisttile"),
  ContainerInfo(
      "SpacerWidget",
      " 只能用于Row、Column和Flex布局中，可利用剩余空间进行占位ie,使用flex属性可以给多个Spacer按比例分配空间。",
      "/spacer"),
  ContainerInfo("AboutListTileWidget",
      " 一个通用的对话框结构，可指定头、种、尾处的组件。拥有标题、内容的文字样式和边距、影深、形状等属性", "/alertdialog"),
];

final statefulList = <ContainerInfo>[
  ContainerInfo(
      'Image', '用于显示一张图片，可以从文件、内存、网络、资源里加载，可以指定适应方式、样式、颜色混合模式、重复模式。', '/image'),
  ContainerInfo(
      'SliverAppBar', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/sliverappbar'),
];
