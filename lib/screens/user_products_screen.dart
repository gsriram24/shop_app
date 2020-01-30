import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shop_app/widgets/main_drawer.dart';
import 'package:shop_app/widgets/user_product_item.dart';
import '../providers/products.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: const Text('Your products'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (ctx, i) => Column(
            children: <Widget>[
              UserProductItem(
                productsData.items[i].title,
                productsData.items[i].imageUrl,
              ),
              Divider(),
            ],
          ),
          itemCount: productsData.items.length,
        ),
      ),
    );
  }
}
