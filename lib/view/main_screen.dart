import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:east_java_culinary/model/menu_model.dart';
import 'package:east_java_culinary/view/detail_kuliner.dart';

int send = 0;

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Kuliner Jawa Timur'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          if (constraint.maxWidth <= 600) {
            return MenuList();
          } else if (constraint.maxWidth <= 1200) {
            return MenuGrid(gridCount: 4);
          } else {
            return MenuGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final MenuModel menu = listMenu[index];
        send = index;
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailKuliner(
                menu: menu,
                indexInput: send,
              );
            }));
          },
          child: Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: Colors.red)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.network(menu.fotoUtama),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          menu.nama,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(menu.alamat,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: listMenu.length,
    );
  }
}

class MenuGrid extends StatelessWidget {
  final int gridCount;
  MenuGrid({required this.gridCount});
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: listMenu.map((menu) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailKuliner(
                    menu: menu,
                    indexInput: send,
                  );
                }));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.red)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.network(
                        menu.fotoUtama,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        menu.nama,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        menu.alamat,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
