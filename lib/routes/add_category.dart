import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Category"),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Description"),
              maxLines: 2,
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: _showIconGrid(),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

_showIconGrid() {
  var ls = [
    Icons.web_asset,
    Icons.weekend,
    Icons.whatshot,
    Icons.widgets,
    Icons.wifi,
    Icons.wifi_lock,
    Icons.wifi_tethering,
    Icons.work,
    Icons.wrap_text,
    Icons.youtube_searched_for,
    Icons.zoom_in,
    Icons.zoom_out,
    Icons.zoom_out_map,
    Icons.restaurant_menu,
    Icons.restore,
    Icons.restore_from_trash,
    Icons.restore_page,
    Icons.ring_volume,
    Icons.room,
    Icons.exposure_zero,
    Icons.extension,
    Icons.face,
    Icons.fast_forward,
    Icons.fast_rewind,
    Icons.fastfood,
    Icons.favorite,
    Icons.favorite_border,
  ];

  return GridView.count(
    crossAxisCount: 8,
    children: List.generate(ls.length, (index) {
      var iconData = ls[index];
      return IconButton(
          onPressed: () {
          },
          icon: Icon(
            iconData,
          ));
    }),
  );
}