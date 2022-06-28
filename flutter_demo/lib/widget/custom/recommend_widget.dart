import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({Key? key, required this.plant}) : super(key: key);
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: size.width * 0.4,
      child: Column(
        children: [
          SizedBox(
            height: 140.0,
            width: 160.0,
            child: Image.asset(
              plant.image,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xFFE8F5E9),
                )
              ],
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      plant.title,
                      style: Theme.of(context).textTheme.button,
                    ),
                    Text(
                      plant.country,
                      style: const TextStyle(
                        color: Color(0xff0a9769),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Text(
                  plant.price.toString(),
                  style: Theme.of(context).textTheme.button?.copyWith(
                        color: Color(0xff0a9769),
                      ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Plant {
  final String image;
  final String title;
  final String country;
  final int price;

  Plant({
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  });
}
