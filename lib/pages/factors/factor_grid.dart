import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/factor_model.dart';
import '../../utils/configuration.dart';
import '../../widgets/grid_container.dart';
import 'factor_controller.dart';

Widget factorGrid(BuildContext context) {
  final FactorController _controller = Get.put(FactorController());

  return gridContainer(context: context, title: "Çarpan Listesi", child: [
    Container(
      child: Obx(
        () => DataTable(
          dataRowHeight: 50,
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
                  factorList.sort((a, b) => a.name.compareTo(b.name));
                  if (!_controller.sortAsc.value) {
                    factorList = factorList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Otel',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortHotelAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortHotelAsc;
                  }
                  factorList.sort((a, b) => a.hotel.compareTo(b.hotel));
                  if (!_controller.sortAsc.value) {
                    factorList = factorList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Para Birimi',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortCurrencyAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortCurrencyAsc;
                  }
                  factorList.sort((a, b) => a.currency.compareTo(b.currency));
                  if (!_controller.sortAsc.value) {
                    factorList = factorList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Son Geçerlilik Tarihi',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortDueDateAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortDueDateAsc;
                  }
                  factorList.sort((a, b) => a.dueDate.compareTo(b.dueDate));
                  if (!_controller.sortAsc.value) {
                    factorList = factorList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Renk',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortColorAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortColorAsc;
                  }
                  factorList.sort((a, b) => a.color.compareTo(b.color));
                  if (!_controller.sortAsc.value) {
                    factorList = factorList.reversed.toList();
                  }
                }),
            DataColumn(
                label: const Text(
                  'Oluşturan',
                ),
                onSort: (columnIndex, sortAscending) {
                  if (columnIndex == _controller.sortColumnIndex.value) {
                    _controller.sortAsc.value =
                        _controller.sortRecordUserAsc.value = sortAscending;
                  } else {
                    _controller.sortColumnIndex.value = columnIndex;
                    _controller.sortAsc = _controller.sortRecordUserAsc;
                  }
                  factorList
                      .sort((a, b) => a.recordUser.compareTo(b.recordUser));
                  if (!_controller.sortAsc.value) {
                    factorList = factorList.reversed.toList();
                  }
                }),
            DataColumn(
              label: const Text(
                '         ',
              ),
            ),
          ],
          rows: List<DataRow>.generate(
            factorList.length,
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
                DataCell(Text(factorList[index].name)),
                DataCell(Text(factorList[index].hotel)),
                DataCell(Text(factorList[index].currency)),
                DataCell(Text(factorList[index].dueDate)),
                DataCell(Text(factorList[index].market)),
                DataCell(Container(
                  padding: EdgeInsets.all(defaultPadding),
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.blue),
                )),
                DataCell(Text(factorList[index].recordUser)),
                DataCell(
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(Icons.details, color: Colors.cyan),
                          onPressed: () => {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(Icons.edit, color: Colors.white),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
  ]);
}
