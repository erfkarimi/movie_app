import 'package:flutter/material.dart';

class SavedItems extends StatefulWidget {
  const SavedItems({ Key? key }) : super(key: key);

  @override
  State<SavedItems> createState() => _SavedItemsState();
}

class _SavedItemsState extends State<SavedItems> {
  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Text("Saved items")
    );
  }
}