import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';
import 'package:flutter_demo/widget/custom/widget_decorated_box.dart';

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
//无状态组件列表
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
  ContainerInfo(
      "AboutDialogWidget",
      " 应用的简介对话框，可指定应用图标、应用名、应用版本号等信息 和内部的子组件列表，点击左侧按钮可以跳转到证书页",
      "/aboutdialog"),
  ContainerInfo(
      "DialogWidget", " 最简易的对话框面板，包含一个内容组件，可指定影深、背景色、形状等属性", "/dialog"),
  ContainerInfo("SimpleDialogWidget",
      " 简单的对话框，可指定头、中部的组件。拥有标题、内容的样式文字和边距、影深、形状等属性", "/simpledialog"),
  ContainerInfo("DayPicker", "日期选择组件，可指定当前日期、选中日期、展示月份等，接收日期选中事件", "/picker"),
  ContainerInfo(
      "SafeArea", "通过添加内边距，来适配一些手机本身特殊性（圆角、刘海屏等）而所造成等布局问题", "/safearea"),
  ContainerInfo("MaterialBanner", " 简单的对话框，可指定头、中部的组件。拥有标题、内容的样式文字和边距、影深、形状等属性",
      "/materialbanner"),
  ContainerInfo(
      "NavigationToolbar",
      "左中右模式等通用结构组件，可指定中间组件距左侧边距及是否居中。源码在AppBar等导航条结构中有使用它",
      "/navigationtoolbar"),
  ContainerInfo("Placeholder", "一个矩形和叉叉等占位组件，可指定颜色、线宽、宽高等属性", "/placeholder"),
  ContainerInfo("Icon", "用于图标限制的组件，可指定图标资源、大小、颜色，简单实用", "/icon"),
  ContainerInfo(
      "Divider", " 水平分割线，可指定颜色、高度、粗细、左右边距等信息，常用于列表的item分割线", "/divider"),
  ContainerInfo(
      "MyPreferredSize", "优先尺寸组件，可容纳一个子组件，设置优先尺寸，不会对其子组件施加任何约束", "/perferred"),
  ContainerInfo("Cupertino", "iOS风格通用对话框,可指定头、中、尾部的组件。", "/cupertino"),
];
//有状态组件列表
final statefulList = <ContainerInfo>[
  ContainerInfo(
      'Image', '用于显示一张图片，可以从文件、内存、网络、资源里加载，可以指定适应方式、样式、颜色混合模式、重复模式。', '/image'),
  ContainerInfo(
      'SliverAppBar', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/sliverappbar'),
  ContainerInfo(
      'AnimatedContainer', '动画容器，可指定动画但时长和曲线，有动画结束事件', '/animated/container'),
  ContainerInfo(
      'AnimatedBuilder',
      '通过 builder 使动面对应的节点变为局部更新，且可避免子组件刷新，减少构建的时问，提高动画性能。',
      '/animated/builder'),
  ContainerInfo('AnimatedList', '强化版的ListView,可以对item进行动画处理，比如在添加、删除item时的动画',
      '/animated/list'),
  ContainerInfo(
      'AnimatedSwitch',
      'AnimatedCrossFade和AnimatedSwitcher动画，组件切换或组件变化时执行动画，动画方式可以自定义,能指定动画时⻓动画曲线等属性。',
      '/animated/switcher'),
  ContainerInfo(
      'AnimatedEffect', '透明动画、边距动画、定位动画、尺寸动画、物理模块动画等', '/animated/effect'),
  ContainerInfo(
      'TransitionEffect', '透明变换、边距变换、定位变换、尺寸变换、装饰变换等', '/transition/effect'),
  ContainerInfo(
      'Material', 'Material风格组件的核心，可指定颜色、景深、类型、阴影颜色、形状等属性', '/material'),
  ContainerInfo(
      'MaterialApp', 'Material应用的顶级组件，包含路由生成器、主题、语言、主页等属性', '/material/app'),
  ContainerInfo(
      'WillPopScope',
      '返回拦截，当一个界面中有WillPopScope组件时，在页面返回时会触发回调，决定时否返回。可用于二次确认退出的场景',
      '/willpop'),
  ContainerInfo(
      'Hero', '可指定标签名，两个界面跳转时具有相同标签等组件会进行共享动画，一个界面中不能存在两个同名的Hero标签', '/hero'),
  ContainerInfo(
      'FutureBuilder',
      '可指定一个Future对象，能够监听异步执行的状态，并在构造器中根据状态构建不同的界面。注意该Flutter对象不能和flutterBuilder同时创建，否则可能过渡刷新',
      '/future'),
  ContainerInfo('Overlay', '可以将组件在全应用中进行悬浮显示，能够添加或移除组件，它们有独立管理等栈', '/overlay'),
  ContainerInfo(
      'Stepper', '步骤条组件，可指定一步步的操作，可自定义步骤的内容，确认和返回的按钮以及步骤排列的方向', '/stepper'),
  ContainerInfo('Checkbox', '复选组件、单选组件、切换组件', '/checkbox'),
  ContainerInfo('Slider', '滑块组件，可以在指定的最大值和最小值之间拖动选择。可指定颜色、分段数及显示的标签，接收进度条变化回调',
      '/slider'),
  ContainerInfo('RangeSlider',
      '范围滑块组件，支持在两点之间滑动，获取之间的范围。可指定颜色、分段数及显示的标签，接收进度条变化回调', '/rangeslider'),
  ContainerInfo('SnackBar', '从底部弹出的消息条，可指定形状、影深、背景色等', '/snackbar'),
  ContainerInfo('RefreshIndicator', '下拉时会显示刷新图标，松手后可以指定指定的异步方法。可指定颜色、到顶端的距离等属性',
      '/refreshIndicator'),
  ContainerInfo('Draggable',
      '可以让组件在界面上任意拖拽，可存放一个泛型T的数据。通常和DragTarget组合使用，来完成拖拽效果。', '/draggable'),
  ContainerInfo('BottomSheet', '可以从底部弹出的一个简单的结构组件，可指定形状、影深、背景色、内部组件构造器等',
      '/bottom/sheet'),
  ContainerInfo('ReorderableListView',
      '可进行⻓按排序的ListView，可指定滑动方向、是否反向、滑动控制器等属性。', '/reorderable'),
  ContainerInfo('ListWheelScrollView',
      '精妙的柱面滑动列表，可指定item高度、透视、挤压等属性，接收滑动时的选中事件。', '/list/wheel/scroll'),
  ContainerInfo(
      'Form',
      '表单组件，可以接收其下的FormField组件的变化回调，通过onWillPop拦截⻚面返回，通过FormState可对表单字段进行保存或校验。',
      '/form'),
  ContainerInfo('TextField',
      '输入框组件，可指定控制器、文字样式、装饰钱、行数限制、游标卡尺样式等，可以接收输入变化、完成输入等事件', '/textfield'),
  ContainerInfo('Expansion', '折叠栏组件，展开图标，展开列表', '/expansion'),
  ContainerInfo('StatefulBuilderWidget',
      '监听值构造器，可以监听一个值，当其变化时通过builder回调能重建界面，避免使用setState刷新。', '/listenable'),
  ContainerInfo(
      'Scaffold', '通用等App结构，包括上下左右中、浮动按钮、抽屉等部位，可放置不同等组件', '/scaffold'),
  ContainerInfo('InkWidget', '水波纹组件、水波纹点击组件', '/ink'),
  ContainerInfo('ProgressIndicator', '圆形进度组件、直线型进度组件', '/progress/indicator'),
  ContainerInfo(
      'SelectableText', '可选择的文字，可以选择、复制。可指定浮标的颜色、大小、文字样式、对齐方式等', '/selectable'),
];

final singleRenderList = <ContainerMsg>[
  ContainerMsg('Clip', '椭圆裁剪，可容纳一个子组件，并将其以宽高为⻓轴和短轴进行椭圆裁切', '/clip'),
  ContainerMsg(
      'Box', '装饰盒、定尺寸盒、适应盒、限制盒、约束盒、分率盒、比例盒、溢出盒、尺寸溢出盒、旋转盒、颜色盒。', '/box'),
  ContainerMsg('AlignPadding', '对⻬组件和边距组件', '/align'),
];
