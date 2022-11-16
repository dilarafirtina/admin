import 'package:admin/constants.dart';
import 'package:admin/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget bonusGrid(BuildContext context, List data) {
  RxBool _sortHotelAsc = true.obs;
  RxBool _sortNameAsc = true.obs;
  RxBool _sortOperatorAsc = true.obs;
  RxBool _sortRoomAsc = true.obs;
  RxBool _sortVoucherDateAsc = true.obs;
  RxBool _sortCheckInDateAsc = true.obs;
  RxBool _sortCheckoutDateAsc = true.obs;
  RxBool _sortBonusAsc = true.obs;
  RxBool _sortStatusAsc = true.obs;
  RxBool _sortAgencyAsc = true.obs;

  RxBool _sortAsc = true.obs;
  RxInt _sortColumnIndex = 0.obs;

  return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      margin: EdgeInsets.all(defaultPadding),
      height: MediaQuery.of(context).size.height - 200,
      child: Column(
        children: [
          gridHeader(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Obx(
                  () => DataTable(
                    border: TableBorder.all(
                        color: Colors.grey.withOpacity(0.3),
                        width: 1,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    columnSpacing: 30,
                    sortColumnIndex: _sortColumnIndex.value,
                    sortAscending: _sortAsc.value,
                    columns: <DataColumn>[
                      DataColumn(
                          label: const Text(
                            'İsim Soyisim',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortNameAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortNameAsc;
                            }
                            data.sort((a, b) => a.name.compareTo(b.name));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: const Text(
                            'Acenta',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortAgencyAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortAgencyAsc;
                            }
                            data.sort((a, b) => a.agency.compareTo(b.agency));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: const Text(
                            'Operator',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortOperatorAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortOperatorAsc;
                            }
                            data.sort(
                                (a, b) => a.operator.compareTo(b.operator));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: const Text(
                            'Otel',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortHotelAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortHotelAsc;
                            }
                            data.sort((a, b) => a.hotel.compareTo(b.hotel));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: const Text(
                            'Oda',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortRoomAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortRoomAsc;
                            }
                            data.sort((a, b) => a.room.compareTo(b.room));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: const Text(
                            'Voucher Tarihi',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortVoucherDateAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortVoucherDateAsc;
                            }
                            data.sort((a, b) =>
                                a.voucherDate.compareTo(b.voucherDate));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: const Text(
                            'Check In ',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortCheckInDateAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortCheckInDateAsc;
                            }
                            data.sort((a, b) => a.checkIn.compareTo(b.checkIn));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: const Text(
                            'Check Out',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortCheckoutDateAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortCheckoutDateAsc;
                            }
                            data.sort(
                                (a, b) => a.checkOut.compareTo(b.checkOut));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: Text(
                            'Har. Bonus',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortBonusAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortBonusAsc;
                            }
                            data.sort(
                                (a, b) => a.totalBonus.compareTo(b.totalBonus));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                      DataColumn(
                          label: Text(
                            'Onay',
                          ),
                          onSort: (columnIndex, sortAscending) {
                            if (columnIndex == _sortColumnIndex.value) {
                              _sortAsc.value =
                                  _sortStatusAsc.value = sortAscending;
                            } else {
                              _sortColumnIndex.value = columnIndex;
                              _sortAsc = _sortStatusAsc;
                            }
                            data.sort((a, b) => a.status.compareTo(b.status));
                            if (!_sortAsc.value) {
                              data = data.reversed.toList();
                            }
                          }),
                    ],
                    rows: List<DataRow>.generate(
                      data.length,
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
                          DataCell(Text(
                              data[index].name + " " + data[index].surname)),
                          DataCell(Text(data[index].agency)),
                          DataCell(Text(data[index].operator)),
                          DataCell(Text(data[index].hotel)),
                          DataCell(Text(data[index].room)),
                          DataCell(Text(data[index].voucherDate)),
                          DataCell(Text(data[index].checkIn)),
                          DataCell(Text(data[index].checkOut)),
                          DataCell(Text(data[index].usedBonus.toString())),
                          DataCell(
                            Row(
                              children: [
                                if (data[index].status == "Cancelled")
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child:
                                        Icon(Icons.edit, color: Colors.white),
                                  ),
                                if (data[index].status != "Completed" &&
                                    data[index].status != "Cancelled")
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.check_circle,
                                        color: Colors.green.shade600),
                                  ),
                                if (data[index].status != "Cancelled")
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.cancel,
                                        color: Colors.red.shade600),
                                  ),
                                if (data[index].status == "Cancelled")
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.arrow_circle_up,
                                        color: Colors.cyan),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ));
}
