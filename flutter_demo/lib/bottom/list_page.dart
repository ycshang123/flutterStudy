import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget divider1 = const Divider(
      color: Colors.blue,
    );
    Widget divider2 = const Divider(color: Colors.green);
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1 : divider2;
      },
      itemBuilder: (context, int index) {
        return _itemWidget();
      },
      itemCount: 15,
    );
  }

  Widget _itemWidget() {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 70,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 60,
              width: 60,
              child: Image.asset("images/coin-bitcoin.png"),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Bitcoin",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "CA￥2,000.40",
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "BTC",
                        style:
                            TextStyle(fontSize: 17.0, color: Colors.blueGrey),
                      ),
                      Text(
                        "0.044802",
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
