import 'package:flutter/material.dart';

class Datatablepage extends StatefulWidget {
  const Datatablepage({super.key});

  @override
  State<Datatablepage> createState() => _DatatablepageState();
}

class _DatatablepageState extends State<Datatablepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(columns: [
          DataColumn(label: Text("No")),
          DataColumn(label: Text("Judul")),
          DataColumn(label: Text("Kategori")),
          DataColumn(label: Text("File")),
          DataColumn(label: Text("Deskripsi")),
          DataColumn(label: Text("Jumlah Download")),
          DataColumn(label: Text("Komentar")),
          DataColumn(label: Text("Aksi")),
        ], rows: [
          DataRow(cells: [
            DataCell(Text("1")),
            DataCell(Text("Proposal Terapi Aktifitas Kelompok Sosialisasi")),
            DataCell(Text("Kesehatan")),
            DataCell(Text("Lorem Ipsum")),
            DataCell(Text("Lorem Ipsum")),
            DataCell(Text("Lorem Ipsum")),
            DataCell(Text("Lorem Ipsum")),
            DataCell(Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.edit),),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever),)
              ],
            )),
          ]),
        ]),
      ),
    );
  }
}
