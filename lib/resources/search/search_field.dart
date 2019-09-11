import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.selection = TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black87),
      decoration: InputDecoration(
        hintText: 'Busque por aulas e cursos',
        hintStyle: TextStyle(fontSize: 14.0, color: Colors.black26),
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Icon(
            Icons.mic,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        border: InputBorder.none,
        icon: Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Icon(
            Icons.search,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
      onSubmitted: (searchQuery) {},
      controller: _controller,
      focusNode: _focusNode,
    );
  }
}
