// ignore_for_file: unused_field, unused_import, prefer_const_constructors, unnecessary_string_escapes
import 'package:collection/collection.dart';
import 'package:deliveryapp/models/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
      name: 'كلاسيك برجر',
      description:
          'قطعتين من اللحم الفاخر من الجبنة الايطالية الشهية , مع قطع المخلل و الخس',
      imagepath: 'lib/images/burgers/burger1.JPG',
      price: 25,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'اضافة زيادة جبن', price: 4),
        Addon(name: 'زيادة مخلل', price: 1),
        Addon(name: 'اضافات اخرى', price: 4),
      ],
    ),
    Food(
      name: 'دبل تشيز',
      description:
          'قطعتين من اللحم الفاخر و قطعتين من الجبنة الايطالية الفاخرة و الشهية ,  قطع المخلل و الخس',
      imagepath: 'lib/images/burgers/burger2.JPG',
      price: 27,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'زيادة جبنة', price: 4),
        Addon(name: 'اللحم المقدد بقري', price: 10),
        Addon(name: 'اضافات اخرى', price: 4),
      ],
    ),
    Food(
      name: 'ميبل تشيكن',
      description:
          'قطعة من الدجاج بصوص الميبل الخاص مع الجبنة الفاخره و قطع المخلل و الخس',
      imagepath: 'lib/images/burgers/burgerE22.jpg',
      price: 29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'زيادة جبنة', price: 4),
        Addon(name: 'زيادة صوص', price: 3),
        Addon(name: 'دبل', price: 10),
      ],
    ),
    Food(
      name: 'تشيز برجر حار',
      description:
          'قطعتين من اللحم الفاخر من الجبنة الايطالية الشهية و صوص الحار اللذيذ, مع قطع المخلل و الخس',
      imagepath: 'lib/images/burgers/burger4.JPG',
      price: 32,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'زيادة جبن', price: 4),
        Addon(name: 'زيادة الصوص الحار', price: 4),
        Addon(name: 'اضفة صوص الرانش', price: 3),
      ],
    ),
    Food(
      name: 'تربل تشيز برجر',
      description:
          'ثلاث من قطع  اللحم الفاخر بينهم الجبنة الايطالية الشهية السائحة , مع قطع المخلل و الخس',
      imagepath: 'lib/images/burgers/burger5.JPG',
      price: 40,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'اكسترا جبن', price: 4),
        Addon(name: 'زيادة صوص', price: 3),
        Addon(name: 'اضافات اخرى', price: 10),
      ],
    ),
    // salads
    Food(
      name: 'سلطة الافكادو',
      description:
          'مكونه من الافكادو , و ممزوجه مع خضروات خضراء , خس , بروكلي , الصوص الخاص',
      imagepath: 'lib/images/salads/salad1.JPG',
      price: 19,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'زيادة صوص', price: 6),
        Addon(name: 'اضافة قطع الدجاج', price: 16),
        Addon(name: 'اضاف جبن البارميزان', price: 13),
      ],
    ),
    Food(
      name: ' سلطة الافكادو و الملفوف',
      description:
          'سلطة الأفوكادو المصنوعة من الأفوكادو والملفوف الأرجواني اللذيذ مع الحمص',
      imagepath: 'lib/images/salads/salad2.JPG',
      price: 28,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'اكسترا جبن بارميزان', price: 0.99),
        Addon(name: 'اضافة قطع دجاج', price: 1.99),
        Addon(name: 'زيادة صوص', price: 2.99),
      ],
    ),
    Food(
      name: 'سلطة الجزر الشهية',
      description:
          'سلطة الجزر المكون الاساسي الجزر الامريكي المميز و الافكادو و الملفوف الشهي مع الصوص الخاص',
      imagepath: 'lib/images/salads/salad3.JPG',
      price: 19,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'اكسترا جبن بارميزان', price: 8),
        Addon(name: 'اضافة قطع الدجاج', price: 12),
        Addon(name: 'اضافة زيادة صوص', price: 6),
      ],
    ),
    Food(
      name: 'سلطة اليوسفي',
      description:
          'سلطة اليوسفي خيار جداً رائع و مميز [اضافة اليوسفي]و الجوز الامريكي , الخس , الجرجير',
      imagepath: 'lib/images/salads/salad4.JPG',
      price: 27,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'اكسترا جبن بارميزان', price: 6),
        Addon(name: 'زيادة صوص', price: 6),
        Addon(name: 'زيادة الجوز', price: 8),
      ],
    ),
    Food(
      name: 'السلطة البنفسجية',
      description:
          'سلطة أرجوانية مصنوعة من الأفوكادو والملفوف الأرجواني اللذيذ مع الحمص',
      imagepath: 'lib/images/salads/salad5.JPG',
      price: 20,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'زيادة جبن بارميزان', price: 0.99),
        Addon(name: 'اضافة قطع دجاج', price: 1.99),
        Addon(name: 'زيادة صوص', price: 2.99),
      ],
    ),
    // sides
    Food(
      name: 'بروكلي مشوي',
      description:
          'بروكلي مشوي على طريقتنا مع اضافة الصوص الخاص و تتزين بجبن بارميزان',
      imagepath: 'lib/images/sides/sides1.JPG',
      price: 16,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'زيادة جبن بارميزان', price: 8),
        Addon(name: 'زيادة ليمون', price: 1),
        Addon(name: 'زيادة صوص', price: 6),
      ],
    ),
    Food(
      name: 'هيلون مشوي',
      description:
          'هيلون مشوي مع اضافة الصوص الخاص الشهي و مزين بجبن بارميزان اللذيذ',
      imagepath: 'lib/images/sides/sides2.JPG',
      price: 19,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'اكسترا جبن بارميزان', price: 8),
        Addon(name: 'زيادة ليمون', price: 1),
        Addon(name: 'زيادة صوص', price: 6),
      ],
    ),
    Food(
      name: 'ويدجز',
      description: 'بطاطس ويدجز بالتتبيله الخاصه تقدم مع الصوص بالكريمة',
      imagepath: 'lib/images/sides/sides3.JPG',
      price: 7,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'زيادة التوابل', price: 4),
        Addon(name: 'زيادة ليمون', price: 1),
        Addon(name: 'زيادة صوص', price: 6),
      ],
    ),
    Food(
      name: 'ماش بتيتو',
      description: ' ماش بتيتو بالكريمة و الليمون تقدم بالطريقة الخاصة',
      imagepath: 'lib/images/sides/sides4.JPG',
      price: 19,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'اكسترا كريمة', price: 4),
        Addon(name: 'اكسترا ليمون', price: 1),
        Addon(name: 'زيادة صوص خارجي', price: 7),
      ],
    ),
    Food(
      name: 'ذرة بالكريمة البيضاء',
      description: 'ذرة بالكريمة البيضاء و الزبدة',
      imagepath: 'lib/images/sides/sides5.JPG',
      price: 14,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'زيادة كريمة', price: 6),
        Addon(name: 'زيادة ليمون', price: 1),
        Addon(name: 'اضافة زبدة خارجية', price: 3),
      ],
    ),

    // desserts
    Food(
      name: 'كريم كارميل كلاسيك',
      description: ' كريم كراميل كلاسيك تتزين بالكريمة البيضاء الكلاسيكية',
      imagepath: 'lib/images/desserts/dessert1.JPG',
      price: 19,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'اكسترا كراميل', price: 4),
        Addon(name: 'اضافة بسكويت', price: 4),
        Addon(name: 'اكسترا كريمة', price: 6),
      ],
    ),
    Food(
      name: 'كريم كراميل بالكرز',
      description: 'كريم كراميل بالكرز و الكريمة',
      imagepath: 'lib/images/desserts/dessert2.JPG',
      price: 21,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'اكسترا كراميل', price: 4),
        Addon(name: 'اكسترا كرز', price: 3),
        Addon(name: 'اكسترا كريمة بيضاء', price: 6),
      ],
    ),
    Food(
      name: 'كريم كراميل بيضاء',
      description: 'كلاسيك كريم كراميل بالفانيلا و الكرز',
      imagepath: 'lib/images/desserts/dessert3.JPG',
      price: 23,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'اكسترا صوص الفانيلا', price: 4),
        Addon(name: 'اكسترا كرز', price: 3),
        Addon(name: 'اضافة بسكويت', price: 4),
      ],
    ),
    Food(
      name: 'كريم برولييه',
      description: 'A Creme brulee with blueberry',
      imagepath: 'lib/images/desserts/dessert4.JPG',
      price: 26,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'اضافة كرز', price: 4),
        Addon(name: 'اضافة بلو بييري', price: 3),
        Addon(name: 'زيادة تحميص', price: 0.0),
      ],
    ),
    Food(
      name: 'كريم برولييه البيضاء ',
      description: 'A white Creme brulee',
      imagepath: 'lib/images/desserts/dessert5.JPG',
      price: 25,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra caramel', price: 0.99),
        Addon(name: 'caramel', price: 1.99),
        Addon(name: 'Add cherry', price: 2.99),
      ],
    ),
    // drinks
    Food(
      name: 'Blue Drink',
      description: 'A Blue Drink with  Creme',
      imagepath: 'lib/images/drinks/drink1.JPG',
      price: 16,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'اكسترا كريمة ', price: 7),
        Addon(name: 'اضافة كرز', price: 4),
        Addon(name: 'زيادة ثلج', price: 0),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'A Lemonade with mint',
      imagepath: 'lib/images/drinks/lemon1.jpg',
      price: 12,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'اكسترا نعناع', price: 2.00),
        Addon(name: 'اضافة سكر', price: 0.00),
        Addon(name: 'زيادة ثلج', price: 0.00),
      ],
    ),
    Food(
      name: 'Slush lemonade',
      description: 'A Slush lemonade with Mint',
      imagepath: 'lib/images/drinks/drink3.JPG',
      price: 17,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'اكسترا نعناع', price: 2.00),
        Addon(name: 'اضافة سكر', price: 0.00),
        Addon(name: 'زيادة ثلج', price: 0.00),
      ],
    ),
    Food(
      name: 'Red Berry',
      description: 'A Red Lemonade with Berrise',
      imagepath: 'lib/images/drinks/drink4.JPG',
      price: 16,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'اكسترا توت ازرق', price: 5.00),
        Addon(name: 'زيادة سكر', price: 0),
        Addon(name: 'اضافة نعناع', price: 2),
      ],
    ),
    Food(
      name: 'Red Slush lemonade',
      description: 'A Red Slush lemonade with Mint',
      imagepath: 'lib/images/drinks/drink5.JPG',
      price: 18,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'اكسترا نعناع', price: 0.99),
        Addon(name: 'اضافة سكر', price: 1.99),
        Addon(name: 'زيادة ثلج', price: 0),
      ],
    ),
  ];

  /*
G E T T E R S
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
O P E R A T I O N S 
  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with yhe same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // if item already exists , increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise , add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*
H E L P E R S
  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your reseipt...");
    receipt.writeln();

    // format the date to include up to seconod only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
     

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\SR${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(',');
  }
}
