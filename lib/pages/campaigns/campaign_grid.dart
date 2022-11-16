import 'package:admin/constants.dart';
import 'package:admin/models/Campaigns.dart';
import 'package:admin/widgets/grid_container.dart';
import 'package:admin/widgets/networkimage_widget.dart';
import 'package:admin/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget campaignGrid(BuildContext context) {
  RxBool _sortOrderAsc = true.obs;
  RxBool _sortNameAsc = true.obs;
  RxBool _sortStartDateAsc = true.obs;
  RxBool _sortEndDateAsc = true.obs;

  RxBool _sortAsc = true.obs;
  RxInt _sortColumnIndex = 0.obs;

  return gridContainer(context: context, child: [
    ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Obx(
          () => DataTable(
            dataRowHeight: 150,
            border: TableBorder.all(
                color: Colors.grey.withOpacity(0.3),
                width: 1,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            columnSpacing: 30,
            sortColumnIndex: _sortColumnIndex.value,
            sortAscending: _sortAsc.value,
            columns: <DataColumn>[
              DataColumn(
                  label: const Text(
                    'Sıra',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortOrderAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortOrderAsc;
                    }
                    campaignList.sort((a, b) => a.order.compareTo(b.order));
                    if (!_sortAsc.value) {
                      campaignList = campaignList.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Kampanya Adı',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortNameAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortNameAsc;
                    }
                    campaignList.sort((a, b) => a.name.compareTo(b.name));
                    if (!_sortAsc.value) {
                      campaignList = campaignList.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Başlama Tarihi',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortStartDateAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortStartDateAsc;
                    }
                    campaignList
                        .sort((a, b) => a.startDate.compareTo(b.startDate));
                    if (!_sortAsc.value) {
                      campaignList = campaignList.reversed.toList();
                    }
                  }),
              DataColumn(
                  label: const Text(
                    'Bitiş Tarihi',
                  ),
                  onSort: (columnIndex, sortAscending) {
                    if (columnIndex == _sortColumnIndex.value) {
                      _sortAsc.value = _sortEndDateAsc.value = sortAscending;
                    } else {
                      _sortColumnIndex.value = columnIndex;
                      _sortAsc = _sortEndDateAsc;
                    }
                    campaignList
                        .sort((a, b) => a.startDate.compareTo(b.startDate));
                    if (!_sortAsc.value) {
                      campaignList = campaignList.reversed.toList();
                    }
                  }),
              DataColumn(
                label: const Text(
                  'Durum',
                ),
              ),
              DataColumn(
                label: const Text(
                  'Görsel',
                ),
              ),
            ],
            rows: List<DataRow>.generate(
              campaignList.length,
              (int index) => DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.08);
                  }
                  if (index.isEven) {
                    return Colors.grey.withOpacity(0.3);
                  }
                  return null;
                }),
                cells: <DataCell>[
                  DataCell(Text(campaignList[index].order.toString())),
                  DataCell(Text(campaignList[index].name)),
                  DataCell(Text(campaignList[index].startDate)),
                  DataCell(Text(campaignList[index].endDate)),
                  DataCell(
                    Checkbox(
                        autofocus: false,
                        activeColor: secondaryColor,
                        checkColor: Colors.white,
                        value: campaignList[index].status,
                        onChanged: (value) => {false}),
                  ),
                  DataCell(Container(
                      padding: EdgeInsets.all(defaultPadding),
                      width: 200,
                      child: cachedNetworkImage(
                          campaignList[index].image, BoxFit.cover, 'heroTag'))),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  ]);
}
