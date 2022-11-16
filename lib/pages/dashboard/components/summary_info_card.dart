import 'package:admin/models/Summary.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SummaryInfoCard extends StatelessWidget {
  const SummaryInfoCard({
    Key? key,
    required this.summary,
  }) : super(key: key);

  final Summary summary;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            summary.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            summary.amount!.toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Icon(summary.percentage! > 5.0 ? Icons.north : Icons.south,
                  size: 12,
                  color: summary.percentage! > 5.0
                      ? Colors.green.shade600
                      : Colors.red.shade600),
              Text(
                summary.percentage.toString() + "%",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: summary.percentage! > 5.0
                        ? Colors.green.shade600
                        : Colors.red.shade600,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Text("Önceki güne göre",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: detailTextColor)),
        ],
      ),
    );
  }
}
