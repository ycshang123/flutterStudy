import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/recommend_widget.dart';

class PlantShop extends StatelessWidget {
  const PlantShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0a9769),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sample-page');
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            );
          },
        ),
        actions: const [Icon(Icons.code)],
      ),
      body: _bodyBuild(),
    );
  }

  Widget _bodyBuild() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _topBuild(),
          _centerBuild(),
        ],
      ),
    );
  }

  Widget _topBuild() {
    return SizedBox(
      height: 275.0,
      child: Column(
        children: [
          Container(
            height: 180.0,
            padding: const EdgeInsets.only(
                left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFA5D6A7),
                    offset: Offset(0.0, 6.0), //阴影y轴偏移量
                    blurRadius: 60, //阴影模糊程度
                    spreadRadius: 2 //阴影扩散程度
                    )
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
              color: Color(0xff0a9769),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Hi小鹿扫描！",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://cdn.jsdelivr.net/gh/ycshang123/image-hosting@master/123.1lgn9yekjmo0.webp',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            widthFactor: 1,
            heightFactor: 1.5,
            alignment: const Alignment(1, -3),
            child: Container(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
              height: 60.0,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      color: Color(0xff085ccb4),
                      fontSize: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.5,
                            style: BorderStyle.solid)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.5,
                            style: BorderStyle.solid)),
                    contentPadding:
                        const EdgeInsets.only(left: 20.0, right: 20.0),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 30.0,
                          color: Color(0xff085ccb4),
                        ))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _centerBuild() {
    var titleStyle = const TextStyle(
        color: Colors.black87, fontSize: 24, fontWeight: FontWeight.bold);
    var list = [
      Plant(
          image: 'images/plant1.png', title: '君子兰', country: '中国', price: 440),
      Plant(image: 'images/plant2.png', title: '当归', country: '中国', price: 330),
      Plant(
          image: 'images/plant3.png', title: '萨曼莎', country: '俄罗斯', price: 220),
    ];
    var images = [
      'images/plant11.png',
      'images/plant22.png',
      'images/plant33.png',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "热门推荐",
                  style: titleStyle,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0a9769),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "更多",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: list
                  .map(
                    (e) => RecommendWidget(plant: e),
                  )
                  .toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "特色植物",
                  style: titleStyle,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0a9769),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "更多",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: images
                  .map(
                    (e) => Container(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Image.asset(
                            e,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
