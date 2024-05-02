import 'package:flutter/material.dart';
import 'package:shopapp/components/shoe_tile.dart';
import 'package:shopapp/models/shoes.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[200], 
          borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            children: [
              Text('Search'),
            Icon(Icons.search, 
            color: Colors.grey,
            ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text('everyone flies.. some fly higher than others', 
          style: TextStyle(color: Colors.grey[600],)
          ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Text('Hot Picks 🔥', 
              style: TextStyle(fontWeight: FontWeight.bold, 
              fontSize: 24
              ),
              ),
              Text(
                'See all', 
              style: TextStyle(fontWeight: FontWeight.bold, 
              fontSize: 24, 
              color: Colors.blue
              ),
              ),
            ],
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = Shoe(
                  name: 'Air Force 1', 
                  price: '115', 
                  imagePath: 'lib/images/air-force-1-07 black.png', 
                  description: "Men's shoe",
                  );
            return ShoeTile(
              shoe: shoe,
            );
          },
          ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
      ],
    );
  }
}
