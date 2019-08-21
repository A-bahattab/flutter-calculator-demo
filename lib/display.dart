import 'package:flutter/material.dart';

class Display extends StatefulWidget {

	Display({Key key, this.value, this.height}) : super(key: key);

	final String value;
	final double height;

	@override
	_DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

	String get _output => widget.value.toString();
	double get _margin => (widget.height / 8);

	LinearGradient _gradient = const LinearGradient(colors: [ Colors.black26, Colors.black45 ]);

	@override
	Widget build(BuildContext context) {		
		
		TextStyle style = Theme.of(context).textTheme.display2
			.copyWith(color: Colors.white, fontWeight: FontWeight.w200);

		return Container(
			padding: EdgeInsets.only(top: _margin, bottom: _margin),
			constraints: BoxConstraints.expand(height: widget.height),
			child: Container(
				padding: EdgeInsets.fromLTRB(32, 32, 32, 32),
				constraints: BoxConstraints.expand(height: widget.height - (_margin)),
				decoration: BoxDecoration(gradient: _gradient),
				child: Text(_output, style: style, textAlign: TextAlign.right, )
			)
		);
	}
}
