import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryGold = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipe Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.bookmark_border, color: primaryGold),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/Kinilaw.png',
                      height: 210,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '🇵🇭 Filipino Classic',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: primaryGold,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Main Course • 25 mins',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Dish Title & Author 
              const Text(
                'Traditional Filipino Kinilaw',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Row(
                children: [
                  Icon(Icons.account_circle, size: 18, color: Colors.black54),
                  SizedBox(width: 6),
                  Text(
                    'Posted by Joe Lingeman',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Fresh diced tuna cured in native cane vinegar, calamansi juice, ginger, red onions, and bird’s eye chili for a bright, zesty coastal dish.',
                style: TextStyle(fontSize: 13, height: 1.4, color: Colors.black87),
              ),
              const SizedBox(height: 20),

              // Ingredients 
              const Text(
                'Ingredients',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• 500g fresh sushi-grade tuna, cubed'),
                    SizedBox(height: 6),
                    Text('• 1/2 cup native cane vinegar (sukang tuba)'),
                    SizedBox(height: 6),
                    Text('• 4 tbsp freshly squeezed calamansi juice'),
                    SizedBox(height: 6),
                    Text('• 1 medium red onion & 1 thumb ginger, minced'),
                    SizedBox(height: 6),
                    Text('• 2 pcs siling labuyo (red chili), sliced'),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Step-by-Step Instructions 
              const Text(
                'Preparation Steps',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1. Rinse cubed tuna briefly in half of the vinegar and drain well.'),
                    SizedBox(height: 8),
                    Text('2. Combine remaining vinegar, calamansi juice, salt, and pepper.'),
                    SizedBox(height: 8),
                    Text('3. Gently toss in the tuna, ginger, red onion, and chilies.'),
                    SizedBox(height: 8),
                    Text('4. Chill for 10 minutes before serving fresh.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}