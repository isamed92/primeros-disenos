import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(),
        ],
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final stiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text(
            '11º',
            style: stiloTexto,
          ),
          Text(
            'Miercoles',
            style: stiloTexto,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          child: Padding(
              child: Text(
                'Bienvenidos',
                style: TextStyle(fontSize: 20.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0)),
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
