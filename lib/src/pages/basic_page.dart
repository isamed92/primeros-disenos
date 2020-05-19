import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  final styleSubtitle = TextStyle(
    fontSize: 18.0,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(),
              _createTitle(),
              _createActions(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Montañas',
                    style: styleTitle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Un lago en alemania',
                    style: styleSubtitle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Llamada'),
        _accion(Icons.near_me, 'Ruta'),
        _accion(Icons.share, 'Compartir'),
      ]);
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _createText(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
        child: Text(
          'Mollit id labore labore est. Consequat cupidatat sit id enim incididunt fugiat elit Lorem enim cupidatat cillum. Nulla proident est duis esse sint.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
