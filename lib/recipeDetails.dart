import 'package:flutter/material.dart';
import 'package:food_recipe_app/Home.dart';

class Recipedetails extends StatelessWidget {
  const Recipedetails({super.key});

  @override
  Widget build(BuildContext context) {
    Map data = {};
    final args = ModalRoute.of(context)?.settings.arguments as Map?;
    if (args!=null){
      data= args;
    }
    return Scaffold(
          body : SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 40, 10,10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap : (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color :Colors.black,
                          size:35
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 35,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 75,
                    width: 244,
                    child: Text(
                      $data['title'],
                      style : TextStyle(
                        color : Color(0xFF303030),
                        fontWeight: FontWeight.w600,
                        fontSize: 24
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 223,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/TrendingRecipe1.png'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color:Color(0xFFFFB661),
                        size: 20,
                      ),
                      Text(
                        '4.5 ',
                        style : TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                          '(300 reviews)',
                        style : TextStyle(
                          color: Color(0xFFA9A9A9),
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 41,
                            width: 41,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/TrendingRecipeOwner1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Text(
                            '  Roberta Anne',
                            style: const TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 36,
                        width: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE23E3E),
                        ),
                        child: Center(
                          child: Text(
                            'follow',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Ingredient(imagePath: 'assets/ingredient1.png', name: 'Bread', measure: 200),
                  Ingredient(imagePath: 'assets/ingredient2.png', name: 'Eggs', measure: 30),
                  Ingredient(imagePath: 'assets/ingredient1.png', name: 'Salt', measure: 2),
                  Ingredient(imagePath: 'assets/ingredient2.png', name: 'Butter', measure: 150),
                  Ingredient(imagePath: 'assets/ingredient2.png', name: 'Butter', measure: 150),
                  Ingredient(imagePath: 'assets/ingredient2.png', name: 'Butter', measure: 150),
                ],
              ),
            ),
          ),
      );

  }
}

class Ingredient extends StatelessWidget{
  final String imagePath;
  final String name;
  final int measure;

  const Ingredient({
    required this.imagePath,
    required this.name,
    required this.measure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(

        height: 76,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF1F1F1) ,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('$imagePath'),
                ),
                Text(
                  '$name',
                  style: TextStyle(
                   color : Color(0xFF303030),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  '($measure)g',
                   style: TextStyle(
                     color: Color(0xFFA9A9A9),
                     fontSize: 14,
                     fontWeight: FontWeight.w400
                   ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}