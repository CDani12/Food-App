import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget singalProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                'https://mx.productosherbal.com/wp-content/uploads/2018/03/T%C3%A9-Concentrado-de-Hierbas-50gr-Herbalife-sabor-Original-300x300.jpg'),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Té Original',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  '51\$/102 Gram',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 5),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              '50 Gram',
                              style: TextStyle(fontSize: 10),
                            )),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xffd0b84c),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xffd0b84c),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Color(0xffd0b84c),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title:
            Text('Home', style: TextStyle(color: Colors.black, fontSize: 17)),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search, size: 17, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              radius: 12,
              child: Icon(Icons.shop, size: 17, color: Colors.black),
            ),
          )
        ],
        backgroundColor: Color(0xff55d638),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://assets.herbalifenutrition.com/content/dam/regional/mexico/es_mx/sites/herbalife-nutrition/oportunidad-de-negocio/clubes-de-nutricion/club_nutricion_sky_mx_410x235.jpg')),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 125, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 700,
                              decoration: BoxDecoration(
                                  color: Color(0xff3bba19),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  )),
                              child: Text(
                                'Nuevos',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ]),
                              ),
                            ),
                          ),
                          Text(
                            '25% Descuento ',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'En Todos Los Productos ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Línea de tés'),
                  Text(
                    'Ver Todos',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Batidos'),
                  Text(
                    'Ver Todos',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
