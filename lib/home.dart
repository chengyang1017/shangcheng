import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail.dart';
import 'models/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Categories(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                
                
                
                
                
                
                
                
                
                
                
                
                child: GridView.builder(
                  itemCount: dummyProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index){
                    return ItemCard(product: dummyProducts[index], press:() => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(product: dummyProducts[index],),
                      ),
                    ),);
                }
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index){
          return buildCategory(index);
        }
      )
      
    );
  }

  Widget buildCategory(int index){
    final bool isSelected = selectedIndex == index;
    final colorScheme = Theme.of(context).colorScheme;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Column(
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? colorScheme.onSurface : colorScheme.onSurface.withValues(alpha:0.5)
              ),
            ), //这是分类文字本身
                        const SizedBox(height: 3),
            Container(
              height: 2,
              width: 30,
              color: isSelected ? colorScheme.onSurface : Colors.transparent,
            )
          ],
        ),
      );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    required this.product,  
    required this.press,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              //照片宽度
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
            child: Image.asset(
              product.imagePath,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace){
                return Center(
                  child: Icon(
                    Icons.image_not_supported_outlined, 
                    size: 50,
                  ),
                );
              },
              )
            ),
          ), //头像处
          const SizedBox(height: 6,),
      
          Text(
            product.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
      
          Text('RM ${product.price.toStringAsFixed(2)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}