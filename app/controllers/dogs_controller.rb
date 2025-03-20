class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @dogs = Dog.where("name LIKE ?", "%#{@query}%")
  end
end
