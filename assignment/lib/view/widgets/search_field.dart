import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSearch;

  const SearchField({Key? key, required this.controller, required this.onSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Search for music',
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: onSearch,
        ),
      ),
    );
  }
}