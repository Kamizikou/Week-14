import 'package:flutter/material.dart';
import 'recipe_detail_screen.dart';

class TasteTroveHomeScreen extends StatelessWidget {
  const TasteTroveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryGold = Theme.of(context).colorScheme.primary;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF8E7),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: primaryGold),
                        ),
                        child: Icon(
                          Icons.restaurant_menu,
                          color: primaryGold,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.search, size: 18, color: Colors.black54),
                              SizedBox(width: 8),
                              Text(
                                'Find New Gourmet',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.mail_outline,
                        color: primaryGold,
                        size: 28,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New Food to Explore!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See more >',
                        style: TextStyle(
                          fontSize: 12,
                          color: primaryGold,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Row 1
                  Row(
                    children: [
                      Expanded(
                        child: _buildRecipeCard(
                          context,
                          dishName: 'Kinilaw',
                          author: 'Joe Lingeman',
                          bgColor: const Color(0xFFE8D8C8),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildRecipeCard(
                          context,
                          dishName: 'Beef Steak',
                          author: 'Neal Santos',
                          bgColor: const Color(0xFFD6E4F0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Row 2
                  Row(
                    children: [
                      Expanded(
                        child: _buildRecipeCard(
                          context,
                          dishName: 'Lumpiang Shanghai',
                          author: 'Christopher Testani',
                          bgColor: const Color(0xFFF5E6CC),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildRecipeCard(
                          context,
                          dishName: 'Kare-Kare',
                          author: 'Erik Bernstien',
                          bgColor: const Color(0xFFF3D5B5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Row 3
                  Row(
                    children: [
                      Expanded(
                        child: _buildRecipeCard(
                          context,
                          dishName: 'Chicken Adobo',
                          author: 'Maria Do',
                          bgColor: const Color(0xFFE5D1B8),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildRecipeCard(
                          context,
                          dishName: 'Lechon Kawali',
                          author: 'Rachel Cook',
                          bgColor: const Color(0xFFF0DFC8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Floating Action
            Positioned(
              bottom: 14,
              right: 16,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: primaryGold,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.edit_note, color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Text(
                      'Share your Ingredients!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFE0E0E0))),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.black87),
                Text('Home', style: TextStyle(fontSize: 11)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.notifications, color: Colors.black54),
                Text('Notification', style: TextStyle(fontSize: 11)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.bookmark, color: Colors.black54),
                Text('Saved', style: TextStyle(fontSize: 11)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, color: Colors.black54),
                Text('Profile', style: TextStyle(fontSize: 11)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecipeCard(
    BuildContext context, {
    required String dishName,
    required String author,
    required Color bgColor,
  }) {
    final primaryGold = Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const RecipeDetailScreen(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFE0E0E0)),
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(13),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.ramen_dining,
                  size: 46,
                  color: Color(0xFF7A5C38),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    dishName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        size: 16,
                        color: Colors.black54,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          author,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.restaurant,
                        size: 15,
                        color: primaryGold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}