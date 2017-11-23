class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
  @cocktail = Cocktail.find(params_cocktail[:id])
  end

  private

  def params_cocktail
  params.require(:cocktails).permit(:name)
  end

end
