import 'package:flutter/material.dart';
import 'package:inferno_core/res/constants.dart';
import 'package:inferno_core/res/helper_extensions.dart';

import '../../res/widgets/general widgets/my_text.dart';

class SystemFiles extends StatelessWidget {
  SystemFiles({Key? key}) : super(key: key);

  final List<FileItemModel> files = [
    FileItemModel(name: "Folder 1", isFolder: true),
    FileItemModel(name: "Folder 2", isFolder: true),
    FileItemModel(name: "File 1", isFolder: false),
    FileItemModel(name: "File 2", isFolder: false),
    // Add more dummy data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("System Files"), centerTitle: true),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: 10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: files.length,
            itemBuilder: (context, index) {
              return FileItem(
                name: files[index].name,
                isFolder: files[index].isFolder,
              );
            },
          ),
        ),
      ),
    );
  }
}

class FileItem extends StatelessWidget {
  final String name;
  final bool isFolder;

  const FileItem({super.key, required this.isFolder, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(isFolder ? Icons.folder : Icons.insert_drive_file, size: 31),
          20.pw,
          Expanded(
            child: MyText(
              name,
              fontSize: 17.5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class FileItemModel {
  final String name;
  final bool isFolder;

  FileItemModel({required this.isFolder, required this.name});
}
