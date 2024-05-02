import 'package:shopapp/models/shoes.dart';

class Cart {
  List<Shoe> shoeShop = [
    Shoe(
    name: 'Air Jordan 5 Retro', 
    price: '150', 
    imagePath: 'lib/images/air-jordan-5-retro.png', 
    description: 'Basketball Shoe',
    ),

    Shoe(
      name: 'Air Force 1 High', 
      price: '195', 
      imagePath: 'lib/images/air-force-1-07-high.webp', 
      description: "Men's shoe",
      ),

      Shoe(
        name: 'Air Max More Uptempo', 
        price: '125', 
        imagePath: 'lib/images/Air more Uptempo.webp', 
        description: 'Basketball Shoes',
        ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShopList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  void removeItemFromCCart(Shoe shoe) {
    userCart.remove(shoe);
  }

}

