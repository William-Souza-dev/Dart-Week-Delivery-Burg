import 'package:flutter/material.dart';

import 'package:dw9_delivery_app/app/models/product_model.dart';

import '../../core/ui/widgets/delivery_appbar.dart';

import 'widgets/delivery_product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return DeliveryProductTile(
                  product: ProductModel(
                      id: 0,
                      name: 'Lanche X',
                      description:
                          'Lanche acompanha pão, hambúguer, mussarela, alface, tomate e maionese',
                      price: 15.0,
                      image:
                          'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
