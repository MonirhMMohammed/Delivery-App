// ignore_for_file: unused_import, prefer_const_constructors, prefer_interpolation_to_compose_strings, unnecessary_string_escapes

import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/models/food.dart';
import 'package:deliveryapp/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

   // method to add to cart
   void addToCart(Food food , Map<Addon , bool> selectedAddons) {

    // close the current food page to go back to menu 
    Navigator.pop(context);

    // format the selected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    // add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
   }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food image
                Image.asset(widget.food.imagepath),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      Text(
                        widget.food.name,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      // food price
                      Text(
                        '\SR' + widget.food.price.toString(),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      // food description
                      Text(
                        widget.food.description,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Theme.of(context).colorScheme.secondary),
                      SizedBox(height: 10),

                      // addons
                      Text(
                        'Add-ons',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(height: 10),

                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddons[index];

                            // return check box UI
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text('\SR' + addon.price.toString()),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                // button add to cart
                MyButton(
                  onTap: () => addToCart(widget.food , widget.selectedAddons) ,
                  text: 'Add to cart',
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.4,
            child: Container(
              margin: EdgeInsets.only(left: 15, top: 5),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
