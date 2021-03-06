class RecipesController < ApplicationController
	before_action :find_recipe, only: [:show, :edit, :update, :destroy]

	def index
		@recipes = Recipe.all.order("created_at DESC")
	end

	def show
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)

		if @recipe.save
			redirect_to @recipe, notice: "Votre recette a été créée avec succès !"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @recipe.update(recipe_params)
			redirect_to @recipe
		else
			render 'edit'
		end
	end

	def destroy
		@recipe.destroy
		redirect_to root_path, notice: "Cette recette a bien été supprimée !"
	end

	private

	def recipe_params
		params.require(:recipe).permit(:title, :description)
	end

	def find_recipe
		@recipe = Recipe.find(params[:id])
	end
end
