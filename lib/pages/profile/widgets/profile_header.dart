import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:admin/constants.dart';
import 'package:admin/widgets/networkimage_widget.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background
        SizedBox(
          height: 300,
          width: double.infinity,
          child: cachedNetworkImage(
            "https://www.wallpapertip.com/wmimgs/171-1717379_black-white-and-gray-wallpaper-gray-background.jpg",
            BoxFit.cover,
            '',
          ),
        ),

        /// Content
        Column(
          children: [
            AppBar(
              title: const Text('Profile'),
              elevation: 0,
              backgroundColor: Colors.transparent,
              titleTextStyle: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const _UserData(),
          ],
        ),
      ],
    );
  }
}

class _UserData extends StatelessWidget {
  const _UserData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          const SizedBox(width: defaultPadding),
          SizedBox(
            width: 100,
            height: 100,
            child: ClipOval(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: cachedNetworkImage(
                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
                  BoxFit.contain,
                  'profile',
                ),
              ),
            ),
          ),
          const SizedBox(width: defaultPadding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Merhaba,',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                'Emre ÇİVİTCİ',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
