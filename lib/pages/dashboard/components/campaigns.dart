import 'package:admin/constants.dart';
import 'package:admin/models/Campaigns.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:admin/widgets/networkimage_widget.dart';

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kampanyalar",
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              height: 220,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.6,
            ),
            items: campaignList
                .map(
                  (item) => Center(
                    child: InkWell(
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 220,
                              child: cachedNetworkImage(
                                item.image,
                                BoxFit.cover,
                                'slider',
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade500.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                item.description,
                                textAlign: TextAlign.right,
                                style: ThemeData.dark()
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      onTap: () => {},
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.only(right: defaultPadding),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.cyan),
              ),
              Text("Warm & Winter"),
            ],
          ),
          Divider(
            height: defaultPadding * 2,
            thickness: 1.5,
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.only(right: defaultPadding),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.purple),
              ),
              Text("Cool Summer"),
            ],
          ),
          Divider(
            height: defaultPadding * 2,
            thickness: 1.5,
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.only(right: defaultPadding),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
              ),
              Text("Kampanya 1"),
            ],
          ),
          Divider(
            height: defaultPadding * 2,
            thickness: 1.5,
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.only(right: defaultPadding),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.pinkAccent),
              ),
              Text("Kampanya 2"),
            ],
          ),
        ],
      ),
    );
  }
}
