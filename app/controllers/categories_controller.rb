class CategoriesController < ApplicationController
  def new
    @category = Category.new

  end

  def create
    @category = Category.new(params.require(:category).permit(:category_id))

    respond_to do |format|
      if @category.save
        format.html { redirect_to restaurants_url, notice: 'Category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
end
