# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: 'Star Wars' ,  name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)


recipe1 = Recipe.create(
   title: 'Slow cooker lasagne',
   duration: '4 hours 15 minutes',
   description: 'Slow cook your next lasagne for extra tender mince – and this version is low-fat and low-calorie. A healthy family meal to give you comfort on cold nights.',
   steps: 'Heat the slow cooker if necessary. Heat the oil in a large non-stick pan and fry the onions, celery, carrots and garlic for 5-10 mins, stirring frequently until softened and starting to colour. Tip in the meat and break it down with a wooden spoon, stirring until it browns. Pour in the tomatoes with a quarter of a can of water, the tomato purée, bouillon, balsamic vinegar, thyme and plenty of black pepper, return to the boil and cook for 5 mins more.
   Spoon half the mince in the slow cooker and top with half the lasagne, breaking it where necessary so it covers as much of the meat layer as possible. Top with the rest of the meat, and then another layer of the lasagne. Cover and cook on Low while you make the sauce.
    Tip the milk and flour into a pan with the bay leaf and nutmeg and cook on the hob, whisking continuously until thickened. Carry on cooking for a few mins to cook the flour. Remove the bay leaf and stir in the cheese. Pour onto the pasta and spread out with a spatula, then cover and cook for 3 hours until the meat is cooked and the pasta is tender. Allow to settle for 10 mins before serving with salad.',
    url: 'https://www.bbcgoodfood.com/recipes/slow-cooker-lasagne',
    image: 'beeflasagne.jpg'
  )
recipe2 = Recipe.create(
    title: 'Paneer-stuffed pancakes',
    duration: '20 mins',
    description: 'These cheap and cheerful paneer pancakes take just 20 minutes to plate up and make an iron-rich veggie meal for two. Spoon on mango chutney and enjoy.',
    steps: 'Heat oven to 110C/90C fan/gas 1/4. To make the pancake batter, gradually mix the egg and milk into the flour either in a food processor or in a bowl by hand with a whisk. Heat a little oil in a non-stick crêpe or frying pan over a medium heat. Pour in about a quarter of the batter and swirl it around to coat the pan. Cook for about 30 secs on each side, then lift onto a baking tray and put in the oven to keep warm. Repeat with the rest of the batter, adding a little more oil to the pan each time – layer baking parchment between the finished pancakes so they don’t stick together.
    Cook the frozen spinach in the microwave for 4 mins or following pack instructions. Meanwhile, heat 1 tsp oil in a non-stick frying pan on a medium heat. Add the paneer and fry for 20 secs on each side until crisp and golden. Stir in the curry paste, then add the chickpeas, passata and spinach, and heat through. If the mixture is too dry, add a splash of water.
    Mix the coconut yogurt with the mango chutney. Divide the hot filling between the pancakes, spoon on some yogurt, then roll up to serve.',
    url: 'https://www.bbcgoodfood.com/recipes/paneer-stuffed-pancakes',
    image: 'paneer.jpg'    
  )
recipe3 = Recipe.create(
    title: 'Poor man''s vongole rosso',
    duration: '35 mins',
    description: 'A brilliantly healthy pasta dish that''s low calorie and rich in iron too, using budget-friendly cockles instead of clams',
    steps: 'Heat the olive oil in a large saucepan with a lid. Add the garlic and sizzle for 1 min, then tip in the tomatoes. Use the white wine to swirl round and rinse out the tomato can, then tip it into the pan, sprinkle over the sugar and turn up the heat. Simmer until everything becomes thick, making sure you stir occasionally so it doesn’t burn on the bottom of the pan – this will take 15-20 mins.
    Once the tomatoes have had about 10 mins, cook the pasta in a big pan of salted water until just cooked – this will take about 10 mins – then drain. When the tomatoes and wine have reduced to a thick sauce, throw the cockles into the pan, stir once, cover with a lid and turn the heat up to max. Cook for 3-4 mins until all the cockles have opened, then stir again. Turn off the heat and stir through the pasta with the extra virgin olive oil until everything is coated. Try a strand of pasta and season with salt to taste. Bring the pan to the table with a separate bowl for the shells, and serve straight from the pan.',
    url: 'https://www.bbcgoodfood.com/recipes/poor-mans-vongole-rosso',
    image: 'poor-mans-vongole-rosso.jpg'
  )
  recipe4 = Recipe.create(
    title: 'Refried bean quesadillas',
    duration: '30 mins',
    description: 'This casual meat-free main is a cheap and cheerful way to fill up your friends',
    steps: 'Heat the oil in a large frying pan and cook the onion and garlic for 2 mins. Add the cumin and cook for 1 min more. Tip in the beans, paprika and a splash of water. Using a potato masher, break the beans down as they warm through to make a rough purée. Season generously.
    Spread the refried beans onto 4 of the tortillas and scatter over the cheese and coriander. Spoon over the salsa, then top with the remaining tortillas to make 4 sandwiches. Wipe the frying pan with kitchen paper and return to the heat or heat a griddle pan. Cook each sandwich for 1-2 mins on each side until the tortillas are crisp and golden and the cheese is melting. Serve warm, cut into wedges, with extra salsa and soured cream for dipping.',
    url: 'https://www.bbcgoodfood.com/recipes/725645/refried-bean-quesadillas',
    image: 'recipe-image-legacy-id--365499_11.jpg'
  )


  lasagne = Item.create([
    {name: "rapeseed oil", amount: "2 tsp"},
    {name: "onions, finely chopped", amount: "2 "},
    {name: "celery sticks (about 175g), finely diced", amount: "4"},
    {name: "carrots (320g), finely diced", amount: "4 "},
    {name: "garlic cloves, chopped", amount: "2 "},
    {name: "lean (5% fat) mince beef", amount: "400g "},
    {name: "can chopped tomatoes", amount: "400g "},
    {name: " tomato purée", amount: "2 tbsp"},
    {name: "vegetable bouillon", amount: "2 tsp "},
    {name: " balsamic vinegar", amount: "1 tbsp"},
    {name: "fresh thyme leaves", amount: "1 tbsp "},
    {name: "wholewheat lasagne sheets (105g)", amount: "6 "},
    {name: "whole milk", amount: "400ml "},
    {name: "wholemeal flour", amount: "50g "},
    {name: "bay leaf", amount: "1 "},
    {name: "generous grating of nutmeg", amount: ""},
    {name: "finely grated parmesan", amount: "15g "}])

  paneer = Item.create([
   {name: "large egg, lightly beaten", amount: "1"},
   {name: "semi-skimmed milk", amount: "100ml"},
   {name: "plain flour", amount: "50g"},
   {name: "sunflower oil, plus extra for frying the pancakes", amount: "1 tsp "},
   {name: "frozen spinach", amount: "100g"},
   {name: "pack paneer, cut into medium cubes", amount: "½ x 226g "},
   {name: "hot curry paste", amount: "1 tbsp "},
   {name: "can chickpeas, drained and rinsed", amount: "400g"},
   {name: "passata", amount: "150g"},
   {name: "coconut yogurt", amount: "75ml "},
   {name: "mango chutney", amount: "1 tbsp "}])

  vongole = Item.create([
    {name: "olive oil", amount: "2 tbsp "},
    {name: " garlic cloves, thinly sliced", amount: "3"},
    {name: " can cherry tomatoes", amount: "400g"},
    {name: " white wine", amount: "glass of"},
    {name: " golden caster sugar", amount: "small pinch of"},
    {name: "cockles, rinsed", amount: "750g "},
    {name: "linguine", amount: "400g "},
    {name: "good-quality extra virgin olive oil", amount: "1 tbsp"}]) 


  quesadillas = Item.create([  
    {name: "sunflower oil", amount: "1 tbsp "},
    {name: "onion, finely chopped", amount: "1 "},
    {name: "garlic cloves, finely chopped", amount: "2 "},
    {name: "cumin seeds", amount: "1 tsp "},
    {name: "can pinto or kidney beans, rinsed and drained", amount: "400g "},
    {name: "smoked paprika", amount: "2 tsp "},
    {name: "flour tortillas", amount: "8 "},
    {name: "cheddar or Gruyère, coarsely grated", amount: "100g "},
    {name: "coriander leaves", amount: "handful "},
    {name: "tub fresh tomato salsa, plus extra to serve", amount: "200g "},
    {name: "soured cream, to serve", amount: ""}])

recipe1.items << lasagne
recipe2.items << paneer
recipe3.items << vongole
recipe4.items << quesadillas

recipe1.save
recipe2.save
recipe3.save
recipe4.save


