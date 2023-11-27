import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/ListPage.dart';

class ListData extends StatefulWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  Widget _buildIconButton(IconData icon, VoidCallback onTap) {
    return Flexible(
      flex: 1,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                icon,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemData(
      String image, String text, String text2, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 10),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 10),
        ),
        _buildIconButton(icon, () {
          // Handle the onPressed action here
          print('Delete action tapped');
        }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.deepOrange.shade200,
                              Colors.deepOrange.shade300,
                              Colors.deepOrange.shade400,
                              Colors.deepOrange.shade800
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListPage()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Add Data'),
                            Icon(
                              Icons.add_outlined,
                              size: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Nama Produk',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Harga',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Aksi',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            Divider(),
            _buildItemData('assets/images/Cold Coffee.png', 'Cold Coffee',
                'Rp.20.000,00', Icons.delete_outlined),
            Divider(),
            _buildItemData('assets/images/Latte.png', 'Latte', 'Rp.20.000,00',
                Icons.delete_outlined),
            Divider(),
            _buildItemData('assets/images/Espresso.png', 'Espresso',
                'Rp.20.000,00', Icons.delete_outlined),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
