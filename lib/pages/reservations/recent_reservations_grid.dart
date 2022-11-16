import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget recentGrid(BuildContext context, List reservations) {
  RxBool _sortAgencyAsc = true.obs;
  RxBool _sortOperatorAsc = true.obs;
  RxBool _sortVoucherDateAsc = true.obs;
  RxBool _sortOvernightAsc = true.obs;
  RxBool _sortBonusAsc = true.obs;

  RxBool _sortAsc = true.obs;
  RxInt _sortColumnIndex = 0.obs;

  return Container(
      height: 450,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Obx(
            () => DataTable(
              showBottomBorder: true,
              sortColumnIndex: _sortColumnIndex.value,
              sortAscending: _sortAsc.value,
              columns: <DataColumn>[
                DataColumn(
                    label: const Text(
                      'Acente İsmi',
                    ),
                    onSort: (columnIndex, sortAscending) {
                      if (columnIndex == _sortColumnIndex.value) {
                        _sortAsc.value = _sortAgencyAsc.value = sortAscending;
                      } else {
                        _sortColumnIndex.value = columnIndex;
                        _sortAsc = _sortAgencyAsc;
                      }
                      reservations.sort((a, b) => a.agency.compareTo(b.agency));
                      if (!_sortAsc.value) {
                        reservations = reservations.reversed.toList();
                      }
                    }),
                DataColumn(
                    label: const Text(
                      'Operator',
                    ),
                    onSort: (columnIndex, sortAscending) {
                      if (columnIndex == _sortColumnIndex.value) {
                        _sortAsc.value = _sortOperatorAsc.value = sortAscending;
                      } else {
                        _sortColumnIndex.value = columnIndex;
                        _sortAsc = _sortOperatorAsc;
                      }
                      reservations
                          .sort((a, b) => a.operator.compareTo(b.operator));
                      if (!_sortAsc.value) {
                        reservations = reservations.reversed.toList();
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
                      reservations.sort(
                          (a, b) => a.voucherDate.compareTo(b.voucherDate));
                      if (!_sortAsc.value) {
                        reservations = reservations.reversed.toList();
                      }
                    }),
                DataColumn(
                    label: Text(
                      'Geceleme',
                    ),
                    onSort: (columnIndex, sortAscending) {
                      if (columnIndex == _sortColumnIndex.value) {
                        _sortAsc.value =
                            _sortOvernightAsc.value = sortAscending;
                      } else {
                        _sortColumnIndex.value = columnIndex;
                        _sortAsc = _sortOvernightAsc;
                      }
                      reservations
                          .sort((a, b) => a.overnight.compareTo(b.overnight));
                      if (!_sortAsc.value) {
                        reservations = reservations.reversed.toList();
                      }
                    }),
                DataColumn(
                    label: Text(
                      'Kazanılan Bonus',
                    ),
                    onSort: (columnIndex, sortAscending) {
                      if (columnIndex == _sortColumnIndex.value) {
                        _sortAsc.value = _sortBonusAsc.value = sortAscending;
                      } else {
                        _sortColumnIndex.value = columnIndex;
                        _sortAsc = _sortBonusAsc;
                      }
                      reservations
                          .sort((a, b) => a.totalBonus.compareTo(b.totalBonus));
                      if (!_sortAsc.value) {
                        reservations = reservations.reversed.toList();
                      }
                    }),
              ],
              rows: List<DataRow>.generate(
                reservations.length,
                (int index) => DataRow(
                  cells: <DataCell>[
                    DataCell(Text(reservations[index].agency)),
                    DataCell(Text(reservations[index].operator)),
                    DataCell(Text(reservations[index].voucherDate)),
                    DataCell(Text(reservations[index].overnight.toString())),
                    DataCell(Text(reservations[index].totalBonus.toString())),
                  ],
                ),
              ),
            ),
          ),
        ],
      ));
}
