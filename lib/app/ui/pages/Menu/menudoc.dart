import 'dart:io';
import 'package:dio/dio.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';


class MenuDocente extends StatelessWidget {
  static final String title = 'Firebase Download';

  const MenuDocente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(),

      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Future<ListResult> futureFiles;
  late Future<ListResult> futureFiles2;

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref('/files').listAll();
    futureFiles2 = FirebaseStorage.instance.ref('/files/hola').list();

    
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MenuDocente.title),
          centerTitle: true,
        ),
        body:               
              FutureBuilder<ListResult>(
                future: futureFiles,
                builder: (context, snapshot) {
                  if (snapshot.hasData)
                  {
                    final files = snapshot.data!.items;
                   
                    return ListView.builder(
                      itemCount: files.length,
                      itemBuilder: (context, index) {
                       final file = files [1]; 
                       return ListTile(title: Text(file.name),
                        trailing:   
                             Container(
                               child: CupertinoButton(
                                 onPressed: () => DowloadFiles(file),
                                 child: const Icon(Icons.download,color: Colors.blue,)),
                             ),
                       );
                      },
                      
                    );
                    //ListView.builder(
                      //itemCount: files.length,
                      //itemBuilder: (context, index) {
                        //final file= files [index];
                        //return ListTile(title: Text(file.name),
                        //trailing: 
                        //);
                      //},);
                  } else if (snapshot.hasError){
                    return const Center(child: Text("Ocurre un error"),);
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }        },
              
              ),);
   


}

Future DowloadFiles(Reference ref) async {

  final url = await ref.getDownloadURL();
  final tempDir = await getTemporaryDirectory();
  final path = '${tempDir.path}/${ref.name}';
  await Dio().download(url, path);

  if (url.contains('.mp4')){
    await GallerySaver.saveVideo(path, toDcim: true);
  }else if (url.contains('.jpg')){
    await GallerySaver.saveImage(path, toDcim: true);
    }
}
Future DowloadFiles2(Reference ref) async {

  final url = await ref.getDownloadURL();
  final tempDir = await getTemporaryDirectory();
  final path = '${tempDir.path}/${ref.name}';
  await Dio().download(url, path);

  if (url.contains('.mp4')){
    await GallerySaver.saveVideo(path, toDcim: true);
  }else if (url.contains('.jpg')){
    await GallerySaver.saveImage(path, toDcim: true);
    }
}

