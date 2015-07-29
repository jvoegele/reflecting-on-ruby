require '125_recipe'

preferred_whiskey = 'bourbon';

old_fashioned = Recipe.new('Old Fashioned') do
  ingredient 'superfine sugar', amount: '1 tsp'
  ingredient 'angostura bitters', amount: '2 dashes'
  ingredient 'club soda or water', amount: '1 barspoon'
  ingredient preferred_whiskey, amount: '2 oz'
  ingredient 'ice, preferably a single large cube'
  ingredient 'orange twist, for garnish'
  step 'Measure the sugar into a chilled Old Fashioned glass'
  step 'Add the bitters'
  step 'Splash in the club soda or water'
  step "Add the #{preferred_whiskey} and ice"
  step 'With a barspoon, stir until chilled', duration: 'about 30 seconds'
  step 'Rub the orange twist around the rim of the glass, drop it into the cocktail, and serve'
end;

puts(old_fashioned);
