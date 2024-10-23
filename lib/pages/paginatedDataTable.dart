import 'package:flutter/material.dart';

class Paginateddatatablepage extends StatefulWidget {
  const Paginateddatatablepage({super.key});

  @override
  State<Paginateddatatablepage> createState() => _PaginateddatatablepageState();
}

class _PaginateddatatablepageState extends State<Paginateddatatablepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paginated Table Pract", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          PaginatedDataTable(
            header: Text("Tabel Pekerjaan", textAlign: TextAlign.center,),
            horizontalMargin: 50,
            columns: [
            DataColumn(label: Text("No")),
            DataColumn(label: Text("Nama")),
            DataColumn(label: Text("Pekerjaan")),
            DataColumn(label: Text("Action"))
          ], source: _MyDataSource()),
        ],
      ),
    );
  }
}

class _MyDataSource extends DataTableSource {
  final List<Map<String, dynamic>> _data = [
    {"no": 1, "nama": "Budi", "pekerjaan": "Dokter"},
    {"no": 2, "nama": "Siti", "pekerjaan": "Guru"},
    {"no": 3, "nama": "Andi", "pekerjaan": "Pengacara"},
    {"no": 4, "nama": "Rina", "pekerjaan": "Arsitek"},
    {"no": 5, "nama": "Ahmad", "pekerjaan": "Polisi"},
    {"no": 6, "nama": "Dewi", "pekerjaan": "Perawat"},
    {"no": 7, "nama": "Rudi", "pekerjaan": "Pilot"},
    {"no": 1, "nama": "Budi", "pekerjaan": "Dokter"},
    {"no": 2, "nama": "Siti", "pekerjaan": "Guru"},
    {"no": 3, "nama": "Andi", "pekerjaan": "Pengacara"},
    {"no": 4, "nama": "Rina", "pekerjaan": "Arsitek"},
    {"no": 5, "nama": "Ahmad", "pekerjaan": "Polisi"},
    {"no": 6, "nama": "Dewi", "pekerjaan": "Perawat"},
    {"no": 7, "nama": "Rudi", "pekerjaan": "Pilot"},
  ];

  @override
  DataRow getRow(int index) {
    final row = _data[index];
    return DataRow(cells: [
      DataCell(Text(row['no'].toString())), // Kolom No
      DataCell(Text(row['nama'])), // Kolom Nama
      DataCell(Text(row['pekerjaan'])), // Kolom Pekerjaan
      DataCell(Row(
        children: [IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
        IconButton(onPressed: () {}, icon: Icon(Icons.delete))
        ],
      )),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
