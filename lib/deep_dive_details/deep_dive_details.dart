import 'package:flutter/material.dart';

class DeepDiveDetails extends StatefulWidget {
  final propsOne;
  final String chatId;

  DeepDiveDetails({
    this.propsOne,
    this.chatId
  });

  @override
  _DeepDiveDetailsState createState() => _DeepDiveDetailsState();
}

class _DeepDiveDetailsState extends State<DeepDiveDetails> {
  Color _boxColor;

  @override
  void initState() {
    super.initState();

    _boxColor = Colors.red;
  }

  void didUpdateWidget(DeepDiveDetails oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.chatId != widget.chatId) {
      // resubscribe to different site
    }
  }

  void dispose() {
    super.dispose();
  }

  void _onBoxClick() {
      setState(() {
        _boxColor  = _boxColor == Colors.red ? Colors.green : Colors.red;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text('Deep dive details'),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          ),
          GestureDetector(
            onTap: _onBoxClick,
            child: Container(
              width: 100,
              height: 100,
              color: _boxColor
            )
          )
        ],
      )
    );
  }
}
