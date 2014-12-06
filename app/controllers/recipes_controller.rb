class RecipesController < ApplicationController
	def index
	end

	def show
	end

	def new
	end

	def create
	end

	private

	def find_recipe
		@recipe = Recipe.find(params[:id])
	end
end
