import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0x0D0B0B0B),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Icon(Icons.search),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search Cryptocurrency',
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Color(0x4D0B0B0B),
        ),
      ),
    );
  }
}
