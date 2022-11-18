import 'package:admin/constants.dart';
import 'package:admin/models/campaign_model.dart';
import 'package:admin/models/operator_model.dart';
import 'package:admin/pages/operators/operator_controller.dart';
import 'package:admin/widgets/grid_container.dart';
import 'package:admin/widgets/networkimage_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget operatorGrid(BuildContext context) {
  final OperatorController _controller = Get.put(OperatorController());

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
                  'İsim',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortNameAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortNameAsc;
                  }
                  operatorList.sort((a, b) => a.name.compareTo(b.name));
                  if (!_controller.sortAsc.value) {
                    operatorList = operatorList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Milliyeti',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortNationalityAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortNationalityAsc;
                  }
                  operatorList
                      .sort((a, b) => a.nationality.compareTo(b.nationality));
                  if (!_controller.sortAsc.value) {
                    operatorList = operatorList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Geçerli Olduğu Pazar',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortMarketAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortMarketAsc;
                  }
                  operatorList.sort((a, b) => a.market.compareTo(b.market));
                  if (!_controller.sortAsc.value) {
                    operatorList = operatorList.reversed.toList();
                  }
                }),
          ],
          rows: List<DataRow>.generate(
            operatorList.length,
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
                DataCell(Text(operatorList[index].name)),
                DataCell(Text(operatorList[index].nationality)),
                DataCell(Text(operatorList[index].market)),
              ],
            ),
          ),
        ),
      ),
    )
  ]);
}
