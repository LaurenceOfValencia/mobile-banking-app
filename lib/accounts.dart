import 'dart:async';
import 'dart:io';


import 'package:path_provider/path_provider.dart';

//Future<String> loadAsset() async {
//  return await rootBundle.loadString("assets/accounts.txt");
//}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/accounts.txt');
}

Future<File> balanceTransfer() async {
  final file = await _localFile;

  //String content = await file.readAsString();

  // Write the file
  return file.writeAsString("admin admin 10000 0");
}

Future<String> getFile() async {
  final file = await _localFile;

  String content = await file.readAsString();
  return content;
}

Future<List<String>> getAccount() async {
  List<String> accounts = (await getFile()).split(" ");

  if (accounts.isEmpty)
  {
       balanceTransfer();
       List<String> accounts = (await getFile()).split(" ");
  }

  return accounts;
}
