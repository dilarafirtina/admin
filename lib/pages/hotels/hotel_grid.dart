import 'package:admin/constants.dart';
import 'package:admin/models/campaign_model.dart';
import 'package:admin/pages/campaigns/campaign_controller.dart';
import 'package:admin/widgets/grid_container.dart';
import 'package:admin/widgets/networkimage_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget hotelGrid(BuildContext context) {
  final CampaignController _controller = Get.put(CampaignController());

  return gridContainer(context: context, title: "Kampanya Listesi", child: [
    Container(
      child: Obx(
        () => DataTable(
          dataRowHeight: 150,
          border: TableBorder.all(
              color: Colors.grey.withOpacity(0.3),
              width: 1,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          columnSpacing: 30,
          sortColumnIndex: _controller.sortColumnIndex.value,
          sortAscending: _controller.sortAsc.value,
          columns: <DataColumn>[
            DataColumn(
                label: const Text(
                  'Sıra',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortOrderAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortOrderAsc;
                  }
                  campaignList.sort((a, b) => a.order.compareTo(b.order));
                  if (!_controller.sortAsc.value) {
                    campaignList = campaignList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Kampanya Adı',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortNameAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortNameAsc;
                  }
                  campaignList.sort((a, b) => a.name.compareTo(b.name));
                  if (!_controller.sortAsc.value) {
                    campaignList = campaignList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Başlama Tarihi',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortStartDateAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortStartDateAsc;
                  }
                  campaignList
                      .sort((a, b) => a.startDate.compareTo(b.startDate));
                  if (!_controller.sortAsc.value) {
                    campaignList = campaignList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Bitiş Tarihi',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortEndDateAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortEndDateAsc;
                  }
                  campaignList
                      .sort((a, b) => a.startDate.compareTo(b.startDate));
                  if (!_controller.sortAsc.value) {
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
    )
  ]);
}
