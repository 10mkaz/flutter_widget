import 'package:flutter/material.dart';

class MyHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Handler Demo'),
        ),

        body: Center(
          child: Column(
              children: <Widget>[
                ParentWidget(),

                FlatButton(
                  child: Text('Button'),
                  onPressed: () {
                    //
                  },
                ),

                FlatButton(
                  child: Text('Back'),
                  onPressed: () {
                    print('********** class MyHandler FlatButton: Back');
                    Navigator.pop(context);
                  },
                ),

              ]
          ),
        ),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active: false, @required this.onChanged}) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}

class DelayTest{
  DelayTest({@required this.onChanged});
  final ValueChanged<bool> onChanged;

  void delay() async {
    bool active=false;
    for(int i=0; i<10; i++ ){
      onChanged(!active);
      await new Future.delayed(new Duration(seconds: 3));
    }
  }

}

