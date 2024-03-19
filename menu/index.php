<?php
include('../DATABASE/db.php');



// Fetch recipes from the database
$sql = "SELECT title, description FROM Recipes";
$result = $conn->query($sql);
$recipes = [];

if ($result->num_rows > 0) {
    // Fetch all rows and store them in the $recipes array
    while($row = $result->fetch_assoc()) {
        $recipes[] = $row;
    }
}

$conn->close(); // Close the database connection
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipes</title>
    <style>
        /* Global Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: url(elo.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .container {
            text-align: center;
            padding-top: 100px;
        }

        .container h1 {
            font-size: 2.5rem;
            color: #333;
        }

        .brand {
            font-size: 1.5rem;
            font-weight: bold;
            color: #333;
        }

        .brand img {
            width: 30px;
            margin-right: 5px;
            vertical-align: middle;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 10px 20px;
        }

        nav ul li {
            display: inline;
        }

        nav ul li.menu {
            font-size: 1.2rem;
            cursor: pointer;
        }

        nav ul li.about {
            font-size: 1.2rem;
            cursor: pointer;
        }

        /* Preloader Styles */
        #preloader {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }

        .preloader-content {
            text-align: center;
        }

        .logo {
            font-family: 'Amatic SC', cursive;
            font-size: 4rem;
            color: #333;
            margin-bottom: 20px;
        }

        /* Recipe Styles */
        .recipe-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .recipe-card {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            text-align: left;
        }

        .recipe-title {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 10px;
        }

        .recipe-description {
            font-size: 1.2rem;
            color: #555;
            margin-bottom: 10px;
        }

        /* Button Styles */
        .load-more-btn {
            display: none;
            text-decoration: none;
            margin-top: 20px;
        }

        button {
            background-color: #FF6F61;
            color: #fff;
            border: none;
            padding: 15px 30px;
            font-size: 1.2rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #E4572E;
        }
    </style>
</head>
<body>
    <div id="preloader">
        <div class="preloader-content">
            <h1 class="logo">Let's Cook...</h1>
            <img src="cokingse.gif" alt="Loading...">
        </div>
    </div>
    
    <header>
        <nav>
            <ul>
                <li class="brand" onclick="window.location.href = '/COOK/MENU/ADD/add.html';">
                    <img src="logo.png" alt="Recipes">
                    Recipes
                </li>
                
                <li class="menu">Menu</li>
                <li class="about">About</li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="container">
            <h1>Let's Explore Your Recipes</h1>
        </div>
        
        <div class="recipe-container" id="recipe-container">
            <!-- Recipes will be dynamically loaded here -->
            <?php foreach ($recipes as $recipe) { ?>
                <div class="recipe-card">
                    <h2 class="recipe-title"><?php echo $recipe['title']; ?></h2>
                    <p class="recipe-description"><?php echo $recipe['description']; ?></p>
                </div>
            <?php } ?>
        </div>

        <a href="#" class="load-more-btn" id="load-more">
            <button type="button">Load More</button>
        </a>
    </main>

    <script>
        console.log("Welcome To Recipes");

        window.addEventListener('DOMContentLoaded', function() {
            var preloader = document.getElementById('preloader');
            setTimeout(function() {
                preloader.style.transition = 'opacity 0.3s';
                preloader.style.opacity = 0;
                setTimeout(function() {
                    preloader.style.display = 'none';
                }, 3000);
            }, 5000);
        });
    </script>
</body>
</html>
