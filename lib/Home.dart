import 'package:flutter/material.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 23, 12, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Find best recipes \nfor cooking',
                    style: TextStyle(
                      color: Color(0xFF303030),
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for recipes...',
                      hintStyle: const TextStyle(color: Color(0xFFC1C1C1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(10),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TrendingSection(),
                  const SizedBox(height: 10),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TrendingRecipe(
                          imagePath: 'TrendingRecipe1.png',
                          recipeName: 'Sushi',
                          recipeOwner: 'Niki Samantha',
                          recipeOwnerPic: 'TrendingRecipeOwner1.jpg',
                          rating: 4.5,
                        ),
                        TrendingRecipe(
                          imagePath: 'TrendingRecipe2.png',
                          recipeName: 'French toast',
                          recipeOwner: 'Jerry Chloas',
                          recipeOwnerPic: 'TrendingRecipeOwner1.jpg',
                          rating: 4.8,
                        ),
                        TrendingRecipe(
                          imagePath: 'TrendingRecipe3.png',
                          recipeName: 'Spaghetti',
                          recipeOwner: 'Kim Kouka',
                          recipeOwnerPic: 'TrendingRecipeOwner1.jpg',
                          rating: 4.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const RecentSection(),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecentRecipe(imagePath: 'RecentRecipe1.png', recipeName:'Indonesian chicken burger', recipeOwner:'Kamal Doudi'),
                        RecentRecipe(imagePath: 'RecentRecipe2.png', recipeName:'Home made pancakes', recipeOwner:'Khadidja Djerfi'),
                        RecentRecipe(imagePath: 'RecentRecipe3.png', recipeName:'Seafood fries rice', recipeOwner:'Reda Chinwi')
                      ],
                    ),

                  ),
                  const SizedBox(height: 15),
                  const PopularSection(),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PopularCreator(imagePath: 'TrendingRecipeOwner1.jpg', name: 'Khadidja'),
                        PopularCreator(imagePath: 'TrendingRecipeOwner1.jpg', name: 'Rafika'),
                        PopularCreator(imagePath: 'TrendingRecipeOwner1.jpg', name: 'Batta'),
                        PopularCreator(imagePath: 'TrendingRecipeOwner1.jpg', name: 'Nadine'),
                        PopularCreator(imagePath: 'TrendingRecipeOwner1.jpg', name: 'Aya'),
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

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Trending now 🔥',
          style: TextStyle(
            color: Color(0xFF303030),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Text(
              'See all',
              style: TextStyle(
                color: Color(0xFFE23E3E),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.arrow_right_alt,
              color: Color(0xFFE23E3E),
            ),
          ],
        ),
      ],
    );
  }
}

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular ceators',
          style: TextStyle(
            color: Color(0xFF303030),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Text(
              'See all',
              style: TextStyle(
                color: Color(0xFFE23E3E),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.arrow_right_alt,
              color: Color(0xFFE23E3E),
            ),
          ],
        ),
      ],
    );
  }
}


class RecentSection extends StatelessWidget {
  const  RecentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recent recipes',
          style: TextStyle(
            color: Color(0xFF303030),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Text(
              'See all',
              style: TextStyle(
                color: Color(0xFFE23E3E),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.arrow_right_alt,
              color: Color(0xFFE23E3E),
            ),
          ],
        ),
      ],
    );
  }
}

class TrendingRecipe extends StatelessWidget {
  final String imagePath;
  final String recipeName;
  final String recipeOwner;
  final String recipeOwnerPic;
  final double rating;

  const TrendingRecipe({
    required this.imagePath,
    required this.recipeName,
    required this.recipeOwner,
    required this.recipeOwnerPic,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/Recipedetails', arguments: {
                    'title' : String,
                    'imagePath' : String,
                    'ceatorName' : String,
                  });
                },
                child: Container(
                  height: 220,
                  width: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/$imagePath'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 17,
                child: Container(
                  height: 28,
                  width: 58,
                  decoration: BoxDecoration(
                    color: const Color(0xFF303030).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 20,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        '$rating',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'How to make $recipeName at home',
            style: const TextStyle(
              color: Color(0xFF303030),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/$recipeOwnerPic'),
              ),
              const SizedBox(width: 8),
              Text(
                'by $recipeOwner',
                style: const TextStyle(
                  color: Color(0xFFA9A9A9),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RecentRecipe extends StatelessWidget {
  final String imagePath;
  final String recipeName;
  final String recipeOwner;

  const RecentRecipe({
    required this.imagePath,
    required this.recipeName,
    required this.recipeOwner,

  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 124,
                width: 124,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/$imagePath'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 124,
            child: Text(
              '$recipeName',
              style: const TextStyle(
                color: Color(0xFF303030),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'by $recipeOwner',
                style: const TextStyle(
                  color: Color(0xFFA9A9A9),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PopularCreator extends StatelessWidget {
  final String imagePath;
  final String name ;

  const PopularCreator({
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/$imagePath'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
          const SizedBox(height: 10),
          SizedBox(
            width: 75,
            child: Text(
              '$name',
              style: const TextStyle(
                color: Color(0xFF303030),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}