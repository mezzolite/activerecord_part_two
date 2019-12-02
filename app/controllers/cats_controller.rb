class CatsController < ApplicationController
    def index
        cats = Cat.includes(:owner)
        render json: CatSerializer.new(cats)
    end

    def show
        cat = Cat.find(params[:id])

        render json: CatSerializer.new(cat)
    end
end
