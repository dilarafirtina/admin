import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/grid_container.dart';
import 'user_controller.dart';

Widget userGrid(BuildContext context, List data, String? title) {
  final UserController _controller = Get.put(UserController());

  return gridContainer(context: context, title: title, child: [
    Obx(
      () => DataTable(
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
                'İsim Soyisim',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortNameAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortNameAsc;
                }
                data.sort((a, b) => a.name.compareTo(b.name));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Acenta',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortAgencyAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortAgencyAsc;
                }
                data.sort((a, b) => a.agency.compareTo(b.agency));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Operator',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortOperatorAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortOperatorAsc;
                }
                data.sort((a, b) => a.operator.compareTo(b.operator));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Email',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortEmailAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortEmailAsc;
                }
                data.sort((a, b) => a.hotel.email(b.email));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Ülke',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortCountryAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortCountryAsc;
                }
                data.sort((a, b) => a.country.compareTo(b.country));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Şehir',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortCityAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortCityAsc;
                }
                data.sort((a, b) => a.city.compareTo(b.city));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Kayıt Tarihi',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortRegisterDateAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortRegisterDateAsc;
                }
                data.sort((a, b) => a.registerDate.compareTo(b.registerDate));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'KVKK',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortKVKKAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortKVKKAsc;
                }
                data.sort((a, b) => a.kvkk.compareTo(b.kvkk));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
            label: Text(
              'Onay',
            ),
          ),
        ],
        rows: List<DataRow>.generate(
          data.length,
          (int index) => DataRow(
            color: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.08);
              }
              if (index.isEven) {
                return Colors.grey.withOpacity(0.3);
              }
              return null;
            }),
            cells: <DataCell>[
              DataCell(Text(data[index].name + " " + data[index].surname)),
              DataCell(Text(data[index].agency)),
              DataCell(Text(data[index].operator)),
              DataCell(Text(data[index].email)),
              DataCell(Text(data[index].country)),
              DataCell(Text(data[index].city)),
              DataCell(Text(data[index].registerDate)),
              DataCell(Text(data[index].kvkk)),
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
                    if (data[index].status != "Confirmed")
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: IconButton(
                            icon: Icon(Icons.check_circle,
                                color: Colors.green.shade600),
                            onPressed: () => {},
                          )),
                    if (data[index].status != "Denied" &&
                        data[index].status != "BlackList")
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: IconButton(
                            icon:
                                Icon(Icons.cancel, color: Colors.red.shade600),
                            onPressed: () => {},
                          )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    )
  ]);
}
