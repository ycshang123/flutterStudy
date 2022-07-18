import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

import 'custom/common_sliver_build.dart';

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SliverList"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sliver列表',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  'Sliver家族的列表组件，通过指定delegate构造子组件，通常用于CustomScrollView中。',
                  style: descStyle,
                ),
              ),
              SizedBox(
                height: 500,
                child: CustomScrollView(
                  anchor: 0,
                  scrollDirection: Axis.vertical,
                  reverse: false,
                  slivers: [
                    CommonSliverBuild.buildSliverAppBar(),
                    CommonSliverBuild.buildSliverList(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
