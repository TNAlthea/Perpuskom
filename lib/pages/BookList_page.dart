import 'package:flutter/material.dart';
import 'package:navbar_bottom/pages/navpages/genre_page.dart';
import 'BookDetail_page.dart';
import 'navpages/main_page.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

class BookListPage extends StatefulWidget {
  const BookListPage({Key? key}) : super(key: key);
  @override
  BookListPageState createState() {
    return BookListPageState();
  }
}

class BookListPageState extends State<BookListPage> {
  int? selectedId;
  String selectedName = "";
  int selectedStatusPinjam = 0;
  String selectedWaktuDipinjam = "";
  String selectedWaktuDikembalikan = "";
  int selectedTahunTerbit = 0;
  String selectedSinopsis = "";
  int selectedJumlahPeminjam = 0;
  int selectedStok = 0;
  String selectedAuthor = "";

  static const giantsClubColor = Color(0xffB45452);

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                decoration: BoxDecoration(color: giantsClubColor),
                child: Stack(
                  children: [
                    InkWell(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Icon(
                            Icons.arrow_left,
                            size: 40.0,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GenrePage()),
                            )),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Data",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
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
                            child: GridView.count(
                              mainAxisSpacing: 40.0,
                              crossAxisCount: 2,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: snapshot.data!.map((daftarBuku) {
                                return Container(
                                  child: ListTile(
                                    title: Container(
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.7),
                                          spreadRadius: 0,
                                          blurRadius: 13,
                                          offset: Offset(3,
                                              10), // changes position of shadow
                                        )
                                      ]),
                                      child: Image.network(
                                        'https://picsum.photos/250?image=9',
                                        width: 100,
                                        height: 170,
                                      ),
                                    ),
                                    subtitle: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              daftarBuku.name,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Public Sans'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1.0),
                                            ),
                                            Text(
                                              daftarBuku.author,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: giantsClubColor,
                                                  fontSize: 12,
                                                  fontFamily: 'Public Sans'),
                                            )
                                          ]),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookDetailPage(
                                                    daftarBuku: daftarBuku,
                                                  )));
                                    },
                                  ),
                                );
                              }).toList(),
                            ),
                          );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class listBuku {
  final int? id;
  final String name;
  final int statusPinjam;
  final String waktuDipinjam;
  final String waktuDikembalikan;
  final int tahunTerbit;
  final String sinopsis;
  final int jumlahPeminjam;
  final int stok;
  final String author;

  listBuku(
      {this.id,
      required this.name,
      required this.statusPinjam,
      required this.waktuDipinjam,
      required this.waktuDikembalikan,
      required this.tahunTerbit,
      required this.sinopsis,
      required this.jumlahPeminjam,
      required this.stok,
      required this.author});

  factory listBuku.fromMap(Map<String, dynamic> json) => listBuku(
      id: json['id'],
      name: json['name'],
      statusPinjam: json['statusPinjam'],
      waktuDipinjam: json['waktuDipinjam'],
      waktuDikembalikan: json['waktuDikembalikan'],
      tahunTerbit: json['tahunTerbit'],
      sinopsis: json['sinopsis'],
      jumlahPeminjam: json['jumlahPeminjam'],
      stok: json['stok'],
      author: json['author']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'statusPinjam': statusPinjam,
      'waktuDipinjam': waktuDipinjam,
      'waktuDikembalikan': waktuDikembalikan,
      'tahunTerbit': tahunTerbit,
      'sinopsis': sinopsis,
      'jumlahPeminjam': jumlahPeminjam,
      'stok': stok,
      'author': author
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
        waktuDipinjam TEXT,
        waktuDikembalikan TEXT,
        tahunTerbit INTEGER,
        sinopsis TEXT,
        jumlahPeminjam INTEGER,
        stok INTEGER,
        author TEXT
      )
    ''');
    await db.execute('''
      INSERT INTO listBuku(name, statusPinjam, waktuDipinjam, waktuDikembalikan, tahunTerbit, sinopsis, jumlahPeminjam, stok, author)
      VALUES ('Buku 01', 0, '17-12-2022', '25-12-2022', 2010, 'Buku ini menceritakan tentang bla bla', 240, 1, 'abdul'), 
      ('Buku 02', 0, '18-12-2022', '26-12-2022', 2014, 'Tentang bla bla diceritakan oleh buku ini', 131, 2, 'budi'), 
      ('Buku 03', 0, '19-12-2022', '27-12-2022', 2022, 'Kurang tau saya juga soalnya buku ini baru rilis kemaren maghrib', 0, 3, 'cecep'),
      ('Buku 04', 0, '20-12-2022', '28-12-2022', 2014, 'lo lo lo lo lo loreeeeem', 4, 4, 'dian'), 
      ('Buku 05', 0, '21-12-2022', '29-12-2022', 2010, 'ip ip ip ip ip ipsuuuuum', 80, 5, 'ega'), 
      ('Buku 06', 0, '22-12-2022', '30-12-2022', 2009, 'do do do do do dolooooor', 200, 6, 'fitri'), 
      ('Buku 07', 0, '23-12-2022', '31-12-2022', 1960, 'si si si si si siiiiiiit', 182, 7, 'gilang'), 
      ('Buku 08', 1, '24-12-2022', '01-01-2023', 1999, 'a a a a a a ameeeeeet', 44, 8, 'hasan'), 
      ('Buku 09', 1, '25-12-2022', '02-01-2023', 2008, 'con con con con consectetuuuur', 123, 9, 'ijat'), 
      ('Buku 10', 1, '26-12-2022', '03-01-2023', 2000, 'ad ad ad ad ad adipisciiiiiing', 999, 10, 'jaka'), 
      ('Buku 11', 1, '27-12-2022', '04-01-2023', 2013, 'e e e e e e eliiiiiit', 813, 11, 'lala'), 
      ('Buku 12', 1, '28-12-2022', '05-01-2023', 2022, 'se se se se se seeeeeeeeed', 55, 12, 'munaroh'), 
      ('Buku 13', 1, '29-12-2022', '06-01-2023', 2004, 'di do do do do doooooooooo', 444, 13, 'nana')
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
