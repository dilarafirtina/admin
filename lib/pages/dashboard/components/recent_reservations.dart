import 'package:admin/constants.dart';
import 'package:admin/models/reservation_model.dart';
import 'package:admin/pages/reservations/recent_reservations_grid.dart';
import 'package:flutter/material.dart';

Widget RecentReservations(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(defaultPadding),
    decoration: BoxDecoration(
      color: Theme.of(context).canvasColor,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Son Gelen Rezervasyonlar",
          textAlign: TextAlign.start,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w300),
        ),
        SingleChildScrollView(
            child: recentGrid(
                context, [...completed, ...cancelled, ...preConfirmed])),
      ],
    ),
  );
}
