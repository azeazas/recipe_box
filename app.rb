require("bundler/setup")
require('pry')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/recipe/new') do
  erb(:recipe_form)
end

post('/recipes') do
  @recipe = Recipe.create({:name => params.fetch("recipe_name"), :description => params.fetch("description"), :instructions => params.fetch("instructions").gsub(/\n/, '<br>')})
  redirect("/recipe/new/step2/#{@recipe.id()}")
end

get('/recipe/new/step2/:id') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  erb(:recipe_form_2)
end

get('/recipe/:id') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  erb(:recipe)
end

delete('/recipe/:id') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  @recipe.delete()
  redirect('/')
end

get('/recipe/:id/edit') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  @categories = Category.all()
  erb(:recipe_edit)
end

patch('/recipe/:id/edit') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  erb(:recipe)
end

post('/ingredients') do
  @recipe = Recipe.find(params.fetch("recipe_id").to_i())
  @ingredient = Ingredient.create({:name => params.fetch("ingredient")})
  @amount = Amount.create({:quantity => params.fetch("quantity"), :recipe_id => @recipe.id(), :ingredient_id => @ingredient.id()})
  redirect("/recipe/new/step2/#{@recipe.id()}")
end

post('/categories') do
  @recipe = Recipe.find(params.fetch("recipe_id").to_i())
  @category = Category.create({:name => params.fetch("category")})
  @category.update({:recipe_ids => @recipe.id()})
  redirect("/recipe/new/step2/#{@recipe.id()}")
end

post('/rating') do
  @recipe = Recipe.find(params.fetch("recipe_id").to_i())
  @recipe.update({:rating => params.fetch("rating").to_i()})
  redirect("/recipe/new/step2/#{@recipe.id()}")
end

get('/recipes/name') do
  @recipes = Recipe.all()
  erb(:recipes)
end

get('/recipes/cat') do
  @categories = Category.all()
  erb(:categories)
end

get('/category/:id') do
  @category = Category.find(params.fetch("id").to_i())
  @recipes = @category.recipes()
  erb(:category)
end

delete('/category/:id') do
  @category = Category.find(params.fetch("id").to_i())
  @category.delete()
  redirect('/')
end

get('/recipes/ingredient') do
  @ingredients = Ingredient.all()
  @recipes = Recipe.all()
  erb(:ingredients)
end

get('/ingredient/:id') do
  @ingredient = Ingredient.find(params.fetch("id").to_i())
  @recipes = @ingredient.recipes()
  erb(:ingredient)
end

delete('/ingredient/:id') do
  @ingredient = Ingredient.find(params.fetch("id").to_i())
  @ingredient.delete()
  redirect('/')
end
