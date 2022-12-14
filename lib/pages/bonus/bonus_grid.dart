import 'package:admin/pages/bonus/bonus_controller.dart';
import 'package:admin/widgets/grid_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget bonusGrid(BuildContext context, List data, String? title) {
  final BonusController _controller = Get.put(BonusController());

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
                data.sort((a, b) => a.hotel.compareTo(b.hotel));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Oda',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortRoomAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortRoomAsc;
                }
                data.sort((a, b) => a.room.compareTo(b.room));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Voucher Tarihi',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortVoucherDateAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortVoucherDateAsc;
                }
                data.sort((a, b) => a.voucherDate.compareTo(b.voucherDate));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Check In ',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortCheckInDateAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortCheckInDateAsc;
                }
                data.sort((a, b) => a.checkIn.compareTo(b.checkIn));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: const Text(
                'Check Out',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortCheckoutDateAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortCheckoutDateAsc;
                }
                data.sort((a, b) => a.checkOut.compareTo(b.checkOut));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: Text(
                'Har. Bonus',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortBonusAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortBonusAsc;
                }
                data.sort((a, b) => a.totalBonus.compareTo(b.totalBonus));
                if (!_controller.sortAsc.value) {
                  data = data.reversed.toList();
                }
              }),
          DataColumn(
              label: Text(
                'Onay',
              ),
              onSort: (columnIndex, sortAscending) {
                if (columnIndex == _controller.sortColumnIndex.value) {
                  _controller.sortAsc.value =
                      _controller.sortStatusAsc.value = sortAscending;
                } else {
                  _controller.sortColumnIndex.value = columnIndex;
                  _controller.sortAsc = _controller.sortStatusAsc;
                }
                data.sort((a, b) => a.status.compareTo(b.status));
                if (!_controller.sortAsc.value) {
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
                        child: Icon(Icons.edit, color: Colors.white),
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
                        child: Icon(Icons.cancel, color: Colors.red.shade600),
                      ),
                    if (data[index].status == "Cancelled")
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.arrow_circle_up, color: Colors.cyan),
                      ),
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
