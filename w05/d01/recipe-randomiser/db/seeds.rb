# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


recipes = Recipe.create([{
   title: 'Slow cooker lasagne',
   duration: '4 hours 15 minutes',
   description: 'Slow cook your next lasagne for extra tender mince – and this version is low-fat and low-calorie. A healthy family meal to give you comfort on cold nights.',
   recipe_steps: 'Heat the slow cooker if necessary. Heat the oil in a large non-stick pan and fry the onions, celery, carrots and garlic for 5-10 mins, stirring frequently until softened and starting to colour. Tip in the meat and break it down with a wooden spoon, stirring until it browns. Pour in the tomatoes with a quarter of a can of water, the tomato purée, bouillon, balsamic vinegar, thyme and plenty of black pepper, return to the boil and cook for 5 mins more.
   Spoon half the mince in the slow cooker and top with half the lasagne, breaking it where necessary so it covers as much of the meat layer as possible. Top with the rest of the meat, and then another layer of the lasagne. Cover and cook on Low while you make the sauce.
    Tip the milk and flour into a pan with the bay leaf and nutmeg and cook on the hob, whisking continuously until thickened. Carry on cooking for a few mins to cook the flour. Remove the bay leaf and stir in the cheese. Pour onto the pasta and spread out with a spatula, then cover and cook for 3 hours until the meat is cooked and the pasta is tender. Allow to settle for 10 mins before serving with salad.',
    url: 'https://www.bbcgoodfood.com/recipes/slow-cooker-lasagne',
    image: '/images/beeflasagne.jpg'
  },{
    title: 'Paneer-stuffed pancakes',
    duration: '20 mins',
    description: 'These cheap and cheerful paneer pancakes take just 20 minutes to plate up and make an iron-rich veggie meal for two. Spoon on mango chutney and enjoy.',
    recipe_steps: 'Heat oven to 110C/90C fan/gas 1/4. To make the pancake batter, gradually mix the egg and milk into the flour either in a food processor or in a bowl by hand with a whisk. Heat a little oil in a non-stick crêpe or frying pan over a medium heat. Pour in about a quarter of the batter and swirl it around to coat the pan. Cook for about 30 secs on each side, then lift onto a baking tray and put in the oven to keep warm. Repeat with the rest of the batter, adding a little more oil to the pan each time – layer baking parchment between the finished pancakes so they don’t stick together.
    Cook the frozen spinach in the microwave for 4 mins or following pack instructions. Meanwhile, heat 1 tsp oil in a non-stick frying pan on a medium heat. Add the paneer and fry for 20 secs on each side until crisp and golden. Stir in the curry paste, then add the chickpeas, passata and spinach, and heat through. If the mixture is too dry, add a splash of water.
    Mix the coconut yogurt with the mango chutney. Divide the hot filling between the pancakes, spoon on some yogurt, then roll up to serve.',
    url: 'https://www.bbcgoodfood.com/recipes/paneer-stuffed-pancakes',
    image: '/images/paneer.jpg'    
  },{
    title: 'Poor man''s vongole rosso',
    duration: '35 mins',
    description: 'A brilliantly healthy pasta dish that''s low calorie and rich in iron too, using budget-friendly cockles instead of clams',
    recipe_steps: 'Heat the olive oil in a large saucepan with a lid. Add the garlic and sizzle for 1 min, then tip in the tomatoes. Use the white wine to swirl round and rinse out the tomato can, then tip it into the pan, sprinkle over the sugar and turn up the heat. Simmer until everything becomes thick, making sure you stir occasionally so it doesn’t burn on the bottom of the pan – this will take 15-20 mins.
    Once the tomatoes have had about 10 mins, cook the pasta in a big pan of salted water until just cooked – this will take about 10 mins – then drain. When the tomatoes and wine have reduced to a thick sauce, throw the cockles into the pan, stir once, cover with a lid and turn the heat up to max. Cook for 3-4 mins until all the cockles have opened, then stir again. Turn off the heat and stir through the pasta with the extra virgin olive oil until everything is coated. Try a strand of pasta and season with salt to taste. Bring the pan to the table with a separate bowl for the shells, and serve straight from the pan.',
    url: 'https://www.bbcgoodfood.com/recipes/poor-mans-vongole-rosso',
    image: '/images/poor-mans-vongole-rosso.jpg'
  },{
    title: 'Refried bean quesadillas',
    duration: '30 mins',
    description: 'This casual meat-free main is a cheap and cheerful way to fill up your friends',
    recipe_steps: 'Heat the oil in a large frying pan and cook the onion and garlic for 2 mins. Add the cumin and cook for 1 min more. Tip in the beans, paprika and a splash of water. Using a potato masher, break the beans down as they warm through to make a rough purée. Season generously.
    Spread the refried beans onto 4 of the tortillas and scatter over the cheese and coriander. Spoon over the salsa, then top with the remaining tortillas to make 4 sandwiches. Wipe the frying pan with kitchen paper and return to the heat or heat a griddle pan. Cook each sandwich for 1-2 mins on each side until the tortillas are crisp and golden and the cheese is melting. Serve warm, cut into wedges, with extra salsa and soured cream for dipping.',
    url: 'https://www.bbcgoodfood.com/recipes/725645/refried-bean-quesadillas',
    image: '/images/recipe-image-legacy-id--365499_11.jpg'
  },

  ])