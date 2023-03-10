import 'package:flutter/material.dart';
class HomeDetail extends StatefulWidget {
  const HomeDetail({Key? key, this.id}) : super(key: key);
  final String? id;
  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  String? _id;
  @override
  void initState() {
    super.initState();
    _id=widget.id;

    if(_id == null){
      Future.microtask((){
        final _modelId = ModalRoute.of(context)?.settings.arguments;
        setState(() {
          _id =_modelId is String ? _modelId : widget.id;
        });
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_id ?? ''),
      ),
    );
  }
}
