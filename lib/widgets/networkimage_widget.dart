import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget cachedNetworkImage(String imageUrl, BoxFit? fitValue, String heroTag) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    imageBuilder: (context, imageProvider) => DetailImage(
        heroTag: heroTag,
        imageProvider: imageProvider,
        fitValue: fitValue ?? BoxFit.contain),
    placeholder: (context, url) => ErrorImage(
      heroTag: heroTag,
      imageProvider: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.cover,
      ).image,
    ),
    errorWidget: (context, url, error) => ErrorImage(
      heroTag: heroTag,
      imageProvider:
          Image.asset("assets/images/logo.png", fit: BoxFit.cover).image,
    ),
  );
}

class DetailImage extends StatelessWidget {
  final String heroTag;
  final ImageProvider imageProvider;
  final BoxFit? fitValue;

  const DetailImage({
    Key? key,
    required this.heroTag,
    required this.imageProvider,
    this.fitValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: heroTag,
        child: Material(
          type: MaterialType.transparency,
          child: Image(image: imageProvider, fit: fitValue ?? BoxFit.contain),
        ));
  }
}

class ErrorImage extends StatelessWidget {
  final String heroTag;
  final ImageProvider imageProvider;

  const ErrorImage({
    Key? key,
    required this.heroTag,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: heroTag,
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            height: Get.height / 3.00,
            child: Container(
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: imageProvider, fit: BoxFit.contain),
              ),
            ),
          ),
        ));
  }
}
