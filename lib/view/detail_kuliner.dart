import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:east_java_culinary/model/menu_model.dart';
import 'package:east_java_culinary/view/explore_map.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class DetailKuliner extends StatefulWidget {
  final MenuModel menu;
  final int indexInput;
  DetailKuliner({required this.menu, required this.indexInput});

  @override
  _DetailKulinerState createState() =>
      _DetailKulinerState(input: menu, indexMenu: indexInput);
}

class _DetailKulinerState extends State<DetailKuliner> {
  final MenuModel input;
  final int indexMenu;
  _DetailKulinerState({required this.input, required this.indexMenu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          if (kIsWeb) {
            return TampilanWeb(inputWeb: input, indexMenu: indexMenu);
          } else {
            return TampilanMobile(
              inputMobile: input,
              indexMenu: indexMenu,
            );
          }
        },
      ),
    );
  }
}

//Pada tampilan mobile, link google map pada button 'Jelajahi Sekarang!'
//menggunakan WebView dan menampilkan navigation baru
class TampilanMobile extends StatefulWidget {
  final MenuModel inputMobile;
  final int indexMenu;
  TampilanMobile({required this.inputMobile, required this.indexMenu});

  @override
  _TampilanMobileState createState() =>
      _TampilanMobileState(input: inputMobile, indexMenu: indexMenu);
}

class _TampilanMobileState extends State<TampilanMobile> {
  var panelController = PanelController();
  final MenuModel input;
  final int indexMenu;
  _TampilanMobileState({required this.input, required this.indexMenu});

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      maxHeight: 450,
      minHeight: 100,
      parallaxEnabled: true,
      parallaxOffset: 0.5,
      controller: panelController,
      color: Colors.transparent,
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Image.network(
            input.urlPhotos[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: input.urlPhotos.length,
        onPageChanged: (index) {
          setState(() {});
        },
      ),
      panelBuilder: (ScrollController scroll) {
        return Column(
          children: [
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_up_sharp,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  input.nama,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.red,
                                          size: 40,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          input.alamat,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          size: 40,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          'Rp ' + input.harga.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Text(input.deskripsi),
                                IconButton(
                                  icon: Icon(
                                    input.isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.red,
                                    size: 25,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      input.isFavorite = !input.isFavorite;
                                    });
                                  },
                                ),
                                Center(
                                  child: ElevatedButton(
                                    child: Text('Jelajahi Sekarang !'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ExploreMap(
                                                    nama: input.nama,
                                                    url: input.url,
                                                  )));
                                    },
                                  ),
                                )
                              ],
                            ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        );
      },
    );
  }
}

//Pada tampilan web, link google map pada button 'Jelajahi Sekarang!'
//menggunakan urlLauncher
class TampilanWeb extends StatefulWidget {
  final MenuModel inputWeb;
  final int indexMenu;
  TampilanWeb({required this.inputWeb, required this.indexMenu});
  @override
  _TampilanWebState createState() =>
      _TampilanWebState(input: inputWeb, indexMenu: indexMenu);
}

class _TampilanWebState extends State<TampilanWeb> {
  var panelController = PanelController();
  final MenuModel input;
  final int indexMenu;
  _TampilanWebState({required this.input, required this.indexMenu});
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      maxHeight: 450,
      minHeight: 100,
      parallaxEnabled: true,
      parallaxOffset: 0.5,
      controller: panelController,
      color: Colors.transparent,
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Image.network(
            input.urlPhotos[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: input.urlPhotos.length,
        onPageChanged: (index) {
          setState(() {});
        },
      ),
      panelBuilder: (ScrollController scroll) {
        return Column(
          children: [
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_up_sharp,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  input.nama,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 40,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(input.alamat)
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          size: 40,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text('Rp ' + input.harga.toString())
                                      ],
                                    )
                                  ],
                                ),
                                Text(input.deskripsi),
                                IconButton(
                                  icon: Icon(
                                    input.isFavorite?Icons.favorite:Icons.favorite_border,
                                    color: Colors.red,
                                    size: 25,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      input.isFavorite = !input.isFavorite;
                                    });
                                  },
                                ),
                                Center(
                                  child: ElevatedButton(
                                    child: Text('Jelajahi Sekarang !'),
                                    onPressed: () {
                                      launchURL(input);
                                    },
                                  ),
                                )
                              ],
                            ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        );
      },
    );
  }
}


//fungsi untuk mengecek apakah link bisa diakses
launchURL(MenuModel _menu) async => await canLaunch(_menu.url)
    ? await launch(_menu.url, forceWebView: true, enableJavaScript: true)
    : throw 'Could not launch' + _menu.nama;
