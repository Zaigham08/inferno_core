import 'package:flutter/material.dart';
import 'package:inferno_core/res/constants.dart';
import 'package:inferno_core/res/helper_extensions.dart';
import 'package:inferno_core/res/widgets/general%20widgets/my_text.dart';

class TaskManagerPage extends StatelessWidget {
  const TaskManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Manager"), centerTitle: true),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding - 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyText('Processes:', fontSize: 23),
              5.ph,
              Table(
                border: TableBorder.all(color: Colors.white),
                children: [
                  _buildTableRow(['P id', 'Name', 'CPU', 'Ram', ''], isHeading: true),
                  _buildTableRow(['hy', 'by', 'R', 'hel', 'btn']),
                  _buildTableRow(['hy', 'by', 'R', 'hel', 'btn']),
                  _buildTableRow(['hy', 'by', 'R', 'hel', 'btn']),
                  _buildTableRow(['hy', 'by', 'R', 'hel', 'btn']),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TableRow _buildTableRow(List<String> data, {bool isHeading = false}) {
  return TableRow(
    children: data.map((cellData) => TableCell(
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Text(cellData,style: TextStyle(
          color: isHeading ? Colors.yellow : whiteColor,
          fontWeight: isHeading ? FontWeight.bold : null,
        )),
      ),
    )).toList(),
  );
}
