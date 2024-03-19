-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 05:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cook`
--

-- --------------------------------------------------------

--
-- Table structure for table `interactions`
--

CREATE TABLE `interactions` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `description`, `ingredients`, `instructions`, `user_name`, `created_at`, `updated_at`, `rating`) VALUES
(1, 'Classic Cheese and Veggie Omelette', 'Indulge in a delightful breakfast with this classic cheese and veggie omelette. This recipe combines fluffy eggs with a medley of fresh vegetables and gooey melted cheese, creating a satisfying morning treat that\'s quick and easy to make.', '3 large eggs\r\n1/4 cup diced bell peppers (any color)\r\n1/4 cup diced onions\r\n1/4 cup diced mushrooms\r\n1/4 cup diced tomatoes\r\n1/4 cup shredded cheddar cheese\r\n1 tablespoon butter or cooking oil\r\nSalt and pepper to taste\r\nChopped fresh herbs (optional, for garnish)', 'Heat a non-stick skillet over medium heat. Add butter or cooking oil and let it melt.\r\n\r\nIn a bowl, crack the eggs and beat them until well combined. Season with salt and pepper according to your taste preferences.\r\n\r\nPour the beaten eggs into the skillet, swirling to ensure they cover the bottom evenly. Allow the eggs to cook undisturbed for about 1-2 minutes, until the edges start to set.\r\n\r\nSprinkle the diced bell peppers, onions, mushrooms, and tomatoes evenly over one half of the omelette.\r\n\r\nOnce the edges of the omelette are set and the center is slightly runny, sprinkle the shredded cheddar cheese over the veggies.\r\n\r\nUsing a spatula, carefully fold the empty half of the omelette over the side with the veggies and cheese. Press down gently to seal the omelette.\r\n\r\nCook for another 1-2 minutes until the cheese melts and the omelette is cooked through but still moist.\r\n\r\nSlide the omelette onto a plate and garnish with chopped fresh herbs if desired.\r\n\r\nServe hot and enjoy your classic cheese and veggie omelette with toast or your favorite breakfast sides!', 'orson391', '2024-03-19 16:09:48', '2024-03-19 16:09:48', NULL),
(2, 'Classic Cheese and Veggie Omelette', 'Indulge in a delightful breakfast with this classic cheese and veggie omelette. This recipe combines fluffy eggs with a medley of fresh vegetables and gooey melted cheese, creating a satisfying morning treat that\'s quick and easy to make.', '3 large eggs; 1/4 cup diced bell peppers (any color); 1/4 cup diced onions; 1/4 cup diced mushrooms; 1/4 cup diced tomatoes; 1/4 cup shredded cheddar cheese; 1 tablespoon butter or cooking oil; Salt and pepper to taste; Chopped fresh herbs (optional, for garnish)', '1. Heat a non-stick skillet over medium heat. Add butter or cooking oil and let it melt.; 2. In a bowl, crack the eggs and beat them until well combined. Season with salt and pepper according to your taste preferences.; 3. Pour the beaten eggs into the skillet, swirling to ensure they cover the bottom evenly. Allow the eggs to cook undisturbed for about 1-2 minutes, until the edges start to set.; 4. Sprinkle the diced bell peppers, onions, mushrooms, and tomatoes evenly over one half of the omelette.; 5. Once the edges of the omelette are set and the center is slightly runny, sprinkle the shredded cheddar cheese over the veggies.; 6. Using a spatula, carefully fold the empty half of the omelette over the side with the veggies and cheese. Press down gently to seal the omelette.; 7. Cook for another 1-2 minutes until the cheese melts and the omelette is cooked through but still moist.; 8. Slide the omelette onto a plate and garnish with chopped fresh herbs if desired.; 9. Serve hot and enjoy your classic cheese and veggie omelette with toast or your favorite breakfast sides!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(3, 'Spaghetti Carbonara', 'Enjoy a taste of Italy with this classic spaghetti carbonara recipe. With its creamy sauce, crispy bacon, and perfectly cooked pasta, this dish is sure to become a family favorite.', '8 ounces spaghetti; 4 slices bacon, diced; 2 cloves garlic, minced; 2 large eggs; 1/2 cup grated Parmesan cheese; Salt and black pepper to taste; Chopped fresh parsley for garnish', '1. Cook spaghetti according to package instructions until al dente. Drain, reserving 1/2 cup of pasta water.; 2. In a large skillet, cook diced bacon over medium heat until crispy. Add minced garlic and cook for an additional minute until fragrant. Remove from heat.; 3. In a bowl, whisk together eggs, grated Parmesan cheese, salt, and black pepper until well combined.; 4. Quickly toss the hot cooked spaghetti with the bacon and garlic in the skillet. Remove from heat and pour the egg mixture over the spaghetti, stirring quickly to coat the pasta evenly. If the sauce is too thick, add reserved pasta water, a little at a time, until desired consistency is reached.; 5. Serve immediately, garnished with chopped fresh parsley and additional Parmesan cheese if desired. Enjoy your delicious spaghetti carbonara!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(4, 'Homemade Margherita Pizza', 'Create your own pizzeria-style masterpiece at home with this homemade margherita pizza recipe. With its simple yet flavorful toppings, this pizza is sure to impress.', '1 pound pizza dough; 1/2 cup marinara sauce; 8 ounces fresh mozzarella cheese, sliced; 2 large tomatoes, thinly sliced; Fresh basil leaves; Olive oil; Salt and black pepper to taste', '1. Preheat your oven to 475°F (245°C).; 2. Roll out the pizza dough on a lightly floured surface to your desired thickness.; 3. Transfer the rolled-out dough to a baking sheet or pizza stone.; 4. Spread marinara sauce evenly over the dough, leaving a small border around the edges.; 5. Arrange sliced fresh mozzarella cheese and tomato slices over the sauce.; 6. Drizzle olive oil over the pizza and season with salt and black pepper to taste.; 7. Bake in the preheated oven for 12-15 minutes, or until the crust is golden brown and the cheese is bubbly and melted.; 8. Remove from the oven and let cool slightly before garnishing with fresh basil leaves.; 9. Slice and serve your homemade margherita pizza hot, and enjoy a taste of Italy in the comfort of your own home!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(5, 'Chicken Alfredo Pasta', 'Treat yourself to a creamy and indulgent chicken alfredo pasta with this easy-to-follow recipe. With tender chicken, al dente pasta, and a rich, velvety sauce, this dish is perfect for a cozy night in.', '8 ounces fettuccine pasta; 2 boneless, skinless chicken breasts, sliced; 2 tablespoons butter; 2 cloves garlic, minced; 1 cup heavy cream; 1 cup grated Parmesan cheese; Salt and black pepper to taste; Chopped fresh parsley for garnish', '1. Cook fettuccine pasta according to package instructions until al dente. Drain and set aside.; 2. In a large skillet, melt butter over medium heat. Add minced garlic and cook until fragrant, about 1 minute.; 3. Add sliced chicken breasts to the skillet and cook until golden brown and cooked through, about 5-7 minutes per side. Season with salt and black pepper to taste.; 4. Reduce heat to low and pour in heavy cream, stirring constantly until heated through. Be careful not to boil.; 5. Gradually add grated Parmesan cheese to the skillet, stirring constantly until the sauce is smooth and creamy.; 6. Add cooked fettuccine pasta to the skillet, tossing gently to coat the pasta evenly with the sauce.; 7. Serve hot, garnished with chopped fresh parsley if desired. Enjoy your creamy chicken alfredo pasta!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(6, 'Banana Pancakes', 'Start your day off right with these fluffy and delicious banana pancakes. Made with ripe bananas and a hint of cinnamon, these pancakes are sure to be a hit with the whole family.', '1 cup all-purpose flour; 1 tablespoon granulated sugar; 2 teaspoons baking powder; 1/2 teaspoon ground cinnamon; 1 ripe banana, mashed; 1 cup milk; 1 large egg; 2 tablespoons melted butter; Maple syrup and sliced bananas for serving', '1. In a large bowl, whisk together flour, sugar, baking powder, and ground cinnamon until well combined.; 2. In a separate bowl, mash the ripe banana until smooth. Add milk, egg, and melted butter to the mashed banana, and whisk until combined.; 3. Pour the wet ingredients into the dry ingredients and stir until just combined. Do not overmix; it\'s okay if the batter is slightly lumpy.; 4. Heat a non-stick skillet or griddle over medium heat and lightly grease with butter or cooking spray.; 5. Pour about 1/4 cup of batter onto the skillet for each pancake. Cook until bubbles form on the surface, then flip and cook until golden brown on the other side.; 6. Serve the pancakes hot, topped with maple syrup and sliced bananas. Enjoy your fluffy banana pancakes for breakfast or brunch!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(7, 'Caprese Salad', 'Refresh your palate with this simple yet elegant Caprese salad. Made with fresh tomatoes, creamy mozzarella cheese, and fragrant basil, this salad is a celebration of summertime flavors.', '2 large tomatoes, sliced; 8 ounces fresh mozzarella cheese, sliced; Fresh basil leaves; Extra virgin olive oil; Balsamic glaze; Salt and black pepper to taste', '1. Arrange alternating slices of tomato and fresh mozzarella cheese on a serving platter.; 2. Tuck fresh basil leaves between the tomato and cheese slices.; 3. Drizzle extra virgin olive oil over the salad and season with salt and black pepper to taste.; 4. Drizzle balsamic glaze over the salad in a zigzag pattern for added flavor and visual appeal.; 5. Serve immediately and enjoy the fresh and vibrant flavors of this classic Caprese salad!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(8, 'Vegetable Stir-Fry', 'Whip up a quick and nutritious meal with this vegetable stir-fry recipe. Packed with colorful veggies and tossed in a flavorful stir-fry sauce, this dish is perfect for busy weeknights.', '2 tablespoons vegetable oil; 1 bell pepper, thinly sliced; 1 carrot, julienned; 1 cup broccoli florets; 1 cup snow peas; 1/2 cup sliced mushrooms; 2 cloves garlic, minced; 1/4 cup soy sauce; 2 tablespoons oyster sauce; 1 tablespoon brown sugar; 1 teaspoon sesame oil; Cooked rice or noodles for serving', '1. Heat vegetable oil in a large skillet or wok over medium-high heat.; 2. Add bell pepper, carrot, broccoli florets, snow peas, mushrooms, and minced garlic to the skillet. Stir-fry for 3-4 minutes, or until the vegetables are crisp-tender.; 3. In a small bowl, whisk together soy sauce, oyster sauce, brown sugar, and sesame oil until well combined.; 4. Pour the sauce over the vegetables in the skillet and toss to coat evenly.; 5. Continue to cook for an additional 2-3 minutes, or until the sauce has thickened slightly and the vegetables are heated through.; 6. Serve hot over cooked rice or noodles, and enjoy your flavorful vegetable stir-fry!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(9, 'Chicken Caesar Salad', 'Savor the classic flavors of a Caesar salad with this easy chicken Caesar salad recipe. With tender grilled chicken, crisp romaine lettuce, and tangy Caesar dressing, this salad is a light and satisfying meal.', '2 boneless, skinless chicken breasts; Salt and black pepper to taste; 1 tablespoon olive oil; 1 head romaine lettuce, chopped; 1/2 cup croutons; 1/4 cup grated Parmesan cheese; Caesar dressing (homemade or store-bought)', '1. Season chicken breasts with salt and black pepper to taste.; 2. Heat olive oil in a grill pan or skillet over medium-high heat. Add chicken breasts and cook for 6-8 minutes per side, or until cooked through and no longer pink in the center. Remove from heat and let rest for a few minutes before slicing.; 3. In a large bowl, combine chopped romaine lettuce, croutons, and grated Parmesan cheese.; 4. Add sliced grilled chicken to the salad and toss with Caesar dressing until evenly coated.; 5. Serve immediately and enjoy your delicious chicken Caesar salad as a light lunch or dinner option!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(10, 'Beef Tacos', 'Spice up your dinner routine with these flavorful beef tacos. With seasoned ground beef, crisp lettuce, juicy tomatoes, and creamy avocado, these tacos are sure to be a hit with the whole family.', '1 pound ground beef; 1 small onion, diced; 2 cloves garlic, minced; 1 packet taco seasoning mix; 8 taco shells; Shredded lettuce; Diced tomatoes; Diced avocado; Shredded cheese; Sour cream; Salsa', '1. Heat a skillet over medium heat and add ground beef, diced onion, and minced garlic. Cook until beef is browned and onions are soft, breaking up the meat with a spoon as it cooks.; 2. Drain any excess grease from the skillet and add taco seasoning mix, stirring to combine. Cook for an additional 2-3 minutes, or until heated through.; 3. Heat taco shells according to package instructions.; 4. Fill each taco shell with a spoonful of seasoned ground beef mixture.; 5. Top tacos with shredded lettuce, diced tomatoes, diced avocado, shredded cheese, sour cream, and salsa as desired.; 6. Serve immediately and enjoy your delicious beef tacos with all your favorite toppings!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL),
(11, 'Chocolate Chip Cookies', 'Indulge your sweet tooth with these irresistible chocolate chip cookies. With their soft and chewy texture and gooey chocolate chips, these cookies are a timeless treat that everyone will love.', '1 cup unsalted butter, softened; 1 cup granulated sugar; 1 cup packed brown sugar; 2 large eggs; 1 teaspoon vanilla extract; 3 cups all-purpose flour; 1 teaspoon baking soda; 1/2 teaspoon salt; 2 cups semisweet chocolate chips', '1. Preheat your oven to 350°F (175°C).; 2. In a large bowl, cream together softened butter, granulated sugar, and brown sugar until light and fluffy.; 3. Beat in eggs, one at a time, until well combined. Stir in vanilla extract.; 4. In a separate bowl, whisk together flour, baking soda, and salt. Gradually add the dry ingredients to the wet ingredients, mixing until just combined.; 5. Fold in semisweet chocolate chips until evenly distributed throughout the cookie dough.; 6. Drop rounded tablespoons of cookie dough onto ungreased baking sheets, spacing them about 2 inches apart.; 7. Bake in the preheated oven for 10-12 minutes, or until the edges are golden brown and the centers are set.; 8. Remove from the oven and let cool on the baking sheets for a few minutes before transferring to wire racks to cool completely.; 9. Enjoy your freshly baked chocolate chip cookies with a glass of cold milk or your favorite hot beverage!', 'orson391', '2024-03-19 16:26:27', '2024-03-19 16:26:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`) VALUES
('orson391', 'newtham29@gmail.com', '$2y$10$B17DkYZQaNy4BVQsKPrVyeCQv8jakS3Shi7qGvPre0vAZSSpdDlI6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interactions`
--
ALTER TABLE `interactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interactions`
--
ALTER TABLE `interactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interactions`
--
ALTER TABLE `interactions`
  ADD CONSTRAINT `interactions_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `interactions_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
