import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({Key? key}) : super(key: key);

  @override
  AddRecipeState createState() => AddRecipeState();
}

class AddRecipeState extends State
{
  final TextEditingController _titleController = TextEditingController(); 
  final TextEditingController _descriptionController = TextEditingController(); 
  final TextEditingController _servingsController = TextEditingController(); 
  final TextEditingController _mealTypeController = TextEditingController(); 
  final TextEditingController _durationController = TextEditingController(); 
  final TextEditingController _imageUrlController = TextEditingController(); 
  final TextEditingController _ingredientsController = TextEditingController(); 
  final TextEditingController _instructionsController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Recipe',
                style: GoogleFonts.sofia(
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 255, 195, 14),
                  ),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Enter title...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  hintText: 'Enter description...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _servingsController,
                decoration: InputDecoration(
                  hintText: 'Enter servings...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _mealTypeController,
                decoration: InputDecoration(
                  hintText: 'Enter meal type...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _durationController,
                decoration: InputDecoration(
                  hintText: 'Enter duration...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _imageUrlController,
                decoration: InputDecoration(
                  hintText: 'Enter image URL...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _ingredientsController,
                decoration: InputDecoration(
                  hintText: 'Enter ingredients...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                controller: _instructionsController,
                decoration: InputDecoration(
                  hintText: 'Enter instructions...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipePage(
                        title: _titleController.text,
                        description: _descriptionController.text,
                        servings: _servingsController.text,
                        mealtype: _mealTypeController.text,
                        duration: _durationController.text,
                        imageUrl: _imageUrlController.text,
                        ingredients: _ingredientsController.text.split(','),
                        instructions: _instructionsController.text.split(','),
                      ),
                    ),
                  );
                },
                child: Text('Upload Recipe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class RecipePage extends StatelessWidget {
  final String title;
  final String description;
  final String servings;
  final String mealtype;
  final String duration;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> instructions;

  const RecipePage({
    Key? key,
    required this.title,
    required this.description,
    required this.servings,
    required this.mealtype,
    required this.duration,
    required this.imageUrl,
    required this.ingredients,
    required this.instructions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text('Servings: $servings'),
                  Text('Meal Type: $mealtype'),
                  Text('Duration: $duration minutes'),
                  SizedBox(height: 10),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: ingredients.map((ingredient) {
                      return ListTile(
                        title: Text(ingredient),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Instructions:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: instructions.asMap().entries.map((entry) {
                      return ListTile(
                        title: Text('${entry.key + 1}. ${entry.value}'),
                      );
                    }).toList(),
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