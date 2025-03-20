class DogsController < ApplicationController
  def index
    # @dogs = Dog.all
    @dogs = Dog.page(params[:page]).per(10)
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @dogs = Dog.where("name LIKE ?", "%#{@query}%")
  end
end
