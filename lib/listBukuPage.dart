import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

class ListBukuPage extends StatefulWidget {
  const ListBukuPage({Key? key}) : super(key: key);
  @override
  ListBukuPageState createState() {
    return ListBukuPageState();
  }
}

class ListBukuPageState extends State<ListBukuPage> {
  int? selectedId;
  String selectedName = "";
  int selectedStatusPinjam = 0;
  int selectedTahunTerbit = 0;
  String selectedSinopsis = "";
  int selectedJumlahPeminjam = 0;

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        child: FutureBuilder<List<listBuku>>(
            future: DatabaseHelper.instance.getListBuku(),
            builder: (context, AsyncSnapshot<List<listBuku>> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: Text('Loading...'));
              }
              return snapshot.data!.isEmpty
                  ? Center(
                      child: Text('No data yet!'),
                    )
                  : Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: snapshot.data!.map((daftarBuku) {
                          return Center(
                            child: ListTile(
                              title: Text(daftarBuku.name),
                              subtitle: Column(
                                children: [
                                  if (daftarBuku.statusPinjam == 0)
                                    Text("Dikembalikan")
                                  else 
                                    Text("Sedang Dipinjam")
                                ],
                              ),
                              onLongPress: () async {
                                selectedId = daftarBuku.id;
                                selectedName = daftarBuku.name;
                                selectedJumlahPeminjam = daftarBuku.jumlahPeminjam;
                                selectedSinopsis = daftarBuku.sinopsis;
                                selectedTahunTerbit = daftarBuku.tahunTerbit;

                                daftarBuku.statusPinjam == 1 ? selectedStatusPinjam = 0 : selectedStatusPinjam = 1;
                                await DatabaseHelper.instance.update(
                                  listBuku(id:selectedId, name: selectedName, statusPinjam: selectedStatusPinjam, tahunTerbit: selectedTahunTerbit, sinopsis: selectedSinopsis, jumlahPeminjam: selectedJumlahPeminjam)
                                );
                                setState(() {});
                              },
                            ),
                          );
                        }).toList(),
                      ),
                    );
            }),
      ),
    ]));
  }
}

class listBuku {
  final int? id;
  final String name;
  final int statusPinjam;
  final int tahunTerbit;
  final String sinopsis;
  final int jumlahPeminjam;

  listBuku(
      {this.id,
      required this.name,
      required this.statusPinjam,
      required this.tahunTerbit,
      required this.sinopsis,
      required this.jumlahPeminjam});

  factory listBuku.fromMap(Map<String, dynamic> json) => listBuku(
      id: json['id'],
      name: json['name'],
      statusPinjam: json['statusPinjam'],
      tahunTerbit: json['tahunTerbit'],
      sinopsis: json['sinopsis'],
      jumlahPeminjam: json['jumlahPeminjam']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'statusPinjam': statusPinjam,
      'tahunTerbit': tahunTerbit,
      'sinopsis': sinopsis,
      'jumlahPeminjam': jumlahPeminjam,
    };
  }
}

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ?? await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'listbuku.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE listBuku(
        id INTEGER PRIMARY KEY,
        name TEXT,
        statusPinjam INTEGER,
        tahunTerbit INTEGER,
        sinopsis TEXT,
        jumlahPeminjam INTEGER
      )
    ''');
    await db.execute('''
      INSERT INTO listBuku(name, statusPinjam, tahunTerbit, sinopsis, jumlahPeminjam)
      VALUES ('Buku 01', 1, 2010, 'Buku ini menceritakan tentang bla bla', 240), 
      ('Buku 02', 0, 2014, 'Tentang bla bla diceritakan oleh buku ini', 131), 
      ('Buku 03', 1, 2022, 'Kurang tau saya juga soalnya buku ini baru rilis kemaren maghrib', 0)
    ''');
  }

  Future<List<listBuku>> getListBuku() async {
    Database db = await instance.database;
    var daftarBuku = await db.query('listBuku', orderBy: 'name');
    List<listBuku> bookList = daftarBuku.isNotEmpty
        ? daftarBuku.map((c) => listBuku.fromMap(c)).toList()
        : [];

    return bookList;
  }

  Future<int> add(listBuku daftarBuku) async {
    Database db = await instance.database;
    return await db.insert('listBuku', daftarBuku.toMap());
  }

  Future<int> update(listBuku daftarBuku) async {
    Database db = await instance.database;
    return await db.update('listBuku', daftarBuku.toMap(),
        where: "id = ?", whereArgs: [daftarBuku.id]);
  }
}
