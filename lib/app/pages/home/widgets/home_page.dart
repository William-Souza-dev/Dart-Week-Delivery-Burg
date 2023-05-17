import 'package:dw9_delivery_app/app/core/ui/helpers/loader.dart';
import 'package:dw9_delivery_app/app/core/ui/helpers/messages.dart';
import 'package:flutter/material.dart';

import 'package:dw9_delivery_app/app/models/product_model.dart';

import '../../../core/ui/widgets/delivery_appbar.dart';
import 'delivery_product_tile.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
// na class esta em statefull para poder colocar o with Loader e Messages e usar os Helpers

class _HomePageState extends State<HomePage> with Loader, Messages {
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
                      name: 'Lanche Xx',
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
