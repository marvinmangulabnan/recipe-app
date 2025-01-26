import 'package:flutter/material.dart';

void main() => runApp(RecipeApp());

List<Map<String, dynamic>> favoriteRecipes = [];

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Title
          Text(
            'Recipe',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),

          // Register Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              onPressed: () {
                // Action for Register (optional for now)
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.green,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'REGISTER',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Sign In Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Home Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.grey[400],
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'SIGN IN',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Spacer(),

          // Bottom Image
          Image.asset(
            'assets/background.jpg',
            height: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'name': 'Spicy Chorizo Pizza',
      'image': 'assets/spicychorizzopizza.jpg',
      'serves': '8',
      'prepTime': '10 mins',
      'cookTime': '20 mins',
      'ingredients': {
        'Meat': ['10 slices Chorizo sausage'],
        'Produce': [
          '1 Basil leaves or parsley, Fresh',
          '1/2 tsp Garlic powder',
          '1/2 tsp Oregano, dried'
        ],
        'Condiments': [
          '1 Cup Tomato sauce, store-bought or homemade',
          '1 Olive oil',
          '1 cups Mozzarella cheese'
        ],
        'Baking & Spices': ['1 lb Pizza dough, store-bought or homemade'],
      },
    },
    {
      'name': 'Creamy Garlic Prawn',
      'image': 'assets/creamygarlicprawn.jpg',
      'serves': '6',
      'prepTime': '15 mins',
      'cookTime': '30 mins',
      'ingredients': {
        'Seafood': ['500g prawns'],
        'Produce': [
          '3 Garlic clove',
          '2 Tbsp Parsley',
          '30g Butter, parmesan cheese',
        ],
        'Condiments': [
          '1/2tsp Blackpepper',
          '1 tbsp Olive oil',
          '1/2tsp Salt'
        ],
        'Dairy': ['1 cup Thickened cream'],
      },
    },
    {
      'name': 'Garlic Parmesan Chicken Meatloaves',
      'image': 'assets/garlicmeatloaves.jpg',
      'serves': '6',
      'prepTime': '10 mins',
      'cookTime': '20 mins',
      'ingredients': {
        'Meat': ['1 pound ground Chicken'],
        'Produce': [
          '3 Garlic clove',
          '1/4 cup chopped Parsley',
          '30g Butter, parmesan cheese',
        ],
        'Condiments': [
          '1tsp dried oregano',
          '1 tbsp olive oil',
          '1 tsp salt'
        ],
        'Dairy': ['1/4 cup milk, egg'],
      },
    },
    {
      'name': 'Lemon Blueberry Cheesecake',
      'image': 'assets/lemonblueberrycake.jpg',
      'serves': '4',
      'prepTime': '10 mins',
      'cookTime': '25 mins',
      'ingredients': {
        'Produce': [
          '3 cups Blueberies, freh',
          '2 Lemons, Zest of',
        ],
        'Condiments': [
          '9/16 cup Lemon juice, fresh',
          '1 tbsp Gelatin powder',
        ],
        'Dairy': [
          '1/2 cup Unsalted butter',
          '8 oz Cream cheese' ,
          '1 cup Heavy cream' ,
        ],
      },
    },
     {
      'name': 'Mango Mouse',
      'image': 'assets/mangomouse.jpg',
      'serves': '6',
      'prepTime': '10 mins',
      'cookTime': '10 mins',
      'ingredients': {
        'Produce': [
          '1 1/2 cups Mangos',
          '2 Lemons, Zest of',
        ],
        'Condiments': [
          '9/16 cup Lemon juice, fresh',
          '1 tbsp gelatin powder',
        ],
        'Dairy': ['1 1/2 Heavy cream'],
      },
    },
    {
      'name': 'Strawberry Cake Roll',
      'image': 'assets/strawberrycheeseroll.jpg',
      'serves': '6',
      'prepTime': '30 mins',
      'cookTime': '25 mins',
      'ingredients': {
        'Cake': [
          '25 g White sugar',
          '50 g Milk (3tbsp 1tsp)',
          '50 g Vegetable oil (1/4 cup)',
          '4 egg yolks, egg white',
        ],
        'Condiments': [
          '60 g White sugar',
          '85 g Cake flour',
          '1 tsp Vanilla extract'
           ],
        'Dairy': [
          '150 g Thickened cream 2(2/3 cup)',
          '25 g White sugar (2 tbsp) oz cream cheese' ,
      
        ],
      },
    },
    
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Discover',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Profile button action
            },
            icon: Icon(Icons.person),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            // Home button action
          },
          icon: Icon(Icons.home),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey Vin,',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'What will you cook today?...',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 16),
            // Add multiple recipe cards
            for (var recipe in recipes)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Navigate to Recipe Page with dynamic data
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipePage(recipe: recipe),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                          child: Image.asset(
                            recipe['image'], // Dynamic image path
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            recipe['name'], // Dynamic recipe name
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                // Navigate to Recipes
              },
              icon: Icon(Icons.public),
            ),
            IconButton(
              onPressed: () {
                // Center action (Add Recipe)
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritesPage(),
                  ),
                );
              },
              icon: Icon(Icons.cookie),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add Recipe action
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class RecipePage extends StatefulWidget {
  final Map<String, dynamic> recipe;

  RecipePage({required this.recipe});

  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    // Check if the recipe is already in the favorites list
    isFavorite = favoriteRecipes.contains(widget.recipe);
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        // Add to favorites
        favoriteRecipes.add(widget.recipe);
      } else {
        // Remove from favorites
        favoriteRecipes.remove(widget.recipe);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Recipe',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to Home Page
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                widget.recipe['image'], // Dynamic image
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            // Recipe Title and Favorite Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.recipe['name'], // Dynamic recipe name
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: toggleFavorite,
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : null,
                  ),
                ),
              ],
            ),
            SizedBox(height:8),

            // Serve, Prep, and Cook Time
            Text(
              'Serve ${widget.recipe['serves']}\nPrep Time ${widget.recipe['prepTime']}\nCook Time ${widget.recipe['cookTime']}',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 16),

            // Ingredients Section
            Text(
              'INGREDIENTS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:8),
            ...widget.recipe['ingredients'].entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.key,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                    ),
                    SizedBox(height: 4),
                    ...entry.value.map((item) => Text('- $item')).toList(),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Favorites',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to Home Page
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: favoriteRecipes.isEmpty
          ? Center(
              child: Text(
                'No favorites yet!',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: favoriteRecipes.length,
              itemBuilder: (context, index) {
                final recipe = favoriteRecipes[index];
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Navigate to Recipe Page with the recipe data
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipePage(recipe: recipe),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          recipe['image'],
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(recipe['name']),
                      subtitle: Text(
                          'Serves ${recipe['serves']}\nPrep Time ${recipe['prepTime']}\nCook Time ${recipe['cookTime']}'),
                    ),
                  ),
                );
              },
            ),
    );
  }
}