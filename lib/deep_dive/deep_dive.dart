import 'package:flutter/material.dart';
import 'package:mvp_template/deep_dive/grid_item.dart';

class DeepDive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final serverData = [10, 20, 10, 20, 30, 10, 20, 10, 20, 30];
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150
      ),
      itemBuilder: (context, index) => GridItem(
        mockData: serverData[index % serverData.length]
      ),
      itemCount: 40,
    );

    // ListView.builder(
    //   itemBuilder: (context, index) => Container(...),
    // )

    // Flex(
    //   direction: Axis.vertical,
    //   children: [
    //     Flexible(
    //       child: Container(color: Colors.red),
    //       flex: 1
    //     ),
    //     Flexible(
    //       child: Container(color: Colors.blue),
    //       flex: 1
    //     ),
    //   ],
    // );

    // ListView(
    //   children: [
    //     Text('Column'),
    //     Container(
    //       width: 400,
    //       height: 300,
    //       color: Colors.white,
    //     ),
    //     Text('Column'),
    //     Container(
    //       width: 400,
    //       height: 300,
    //       color: Colors.blue,
    //     ),
    //     Text('Column'),
    //     Container(
    //       width: 400,
    //       height: 300,
    //       color: Colors.red,
    //     ),
    //     Text('Column'),
    //     Text('Column'),
    //     Text('Column'),
    //     Text('Column'),
    //   ],
    // );
  }
}