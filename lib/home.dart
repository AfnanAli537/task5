import 'package:flutter/material.dart';
import 'package:one_screen/category_item';
import 'package:one_screen/product_card.dart';
import 'package:one_screen/res/app_colors.dart';
import 'package:one_screen/res/app_icons.dart';
import 'package:one_screen/res/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: AppColors.mainColor,
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(AppStrings.profileImage),
                        radius: 24,
                      ),
                      Icon(Icons.menu, color: Colors.white, size: 28),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text('Hello, Pino',
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 4),
                  Text(AppStrings.subtitle,
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: AppStrings.searchHint,
                      prefixIcon:
                          const Icon(Icons.search, color: AppColors.mainColor),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryItem(icon: AppIcons.sofa, label: 'Sofas'),
                  CategoryItem(icon: AppIcons.wardrobe, label: 'Wardrobe'),
                  CategoryItem(icon: AppIcons.desk, label: 'Desk'),
                  CategoryItem(icon: AppIcons.dresser, label: 'Dresser'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  ProductCard(
                    imageUrl: AppStrings.productImage1,
                    name: 'FinnNavian',
                    description: AppStrings.productDescription,
                    price: '\$248',
                    isFavorite: true,
                  ),
                  ProductCard(
                    imageUrl: AppStrings.productImage2,
                    name: 'FinnNavian',
                    description: AppStrings.productDescription,
                    price: '\$248',
                    isFavorite: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chair), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
