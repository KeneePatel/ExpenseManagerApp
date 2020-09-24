import 'package:expense_manger/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:expense_manger/routes/add_category.dart';

class CategoryPage extends StatefulWidget {

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<CategoryModel> _lsCateogies = List<CategoryModel>();

  @override
  initState() {
    super.initState();
    _initCategories();
  }

  _initCategories() {
    var cat1 = CategoryModel().rebuild((b) => b
      ..id = 0
      ..title = "Home Utils"
      ..desc = "Home utility related expenses"
      ..iconCodePoint = Icons.home.codePoint);

    _lsCateogies.add(cat1);

    var cat2 = CategoryModel().rebuild((b) => b
      ..id = 0
      ..title = "Grocery"
      ..desc = "Grocery related expenses"
      ..iconCodePoint = Icons.local_grocery_store.codePoint);

    _lsCateogies.add(cat2);

    var cat3 = CategoryModel().rebuild((b) => b
      ..id = 0
      ..title = "Food"
      ..desc = "Food related expenses"
      ..iconCodePoint = Icons.fastfood.codePoint);

    _lsCateogies.add(cat3);

    var cat4 = CategoryModel().rebuild((b) => b
      ..id = 0
      ..title = "Auto"
      ..desc = "Car/Bike related expenses"
      ..iconCodePoint = Icons.directions_bike.codePoint);

    _lsCateogies.add(cat4);
  }

  @override
  Widget build(BuildContext context) {
    return _getCategoryTab();
  }

  Widget _getCategoryTab() {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: _lsCateogies.length,
            itemBuilder: (BuildContext ctxt, int index) {
              var category = _lsCateogies[index];
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: new Border.all(
                        width: 1.0, style: BorderStyle.solid, color: Colors.white)),
                margin: EdgeInsets.all(12.0),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    IconData(category.iconCodePoint, fontFamily: 'MaterialIcons'),
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(category.title, style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Theme.of(context).accentColor
                  ),),
                  subtitle: Text(category.desc, ),
                ),
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          width: 201.0,
          child: RaisedButton(
            child: Text("Add New"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddCategory()),
              );
            },
          ),
        ),
      ],
    );
  }
}