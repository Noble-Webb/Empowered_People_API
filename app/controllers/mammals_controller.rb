class MammalsController < ApplicationController
    def index
       mammals = Mammal.all 
       render json: mammals 
    end

    def show
        mammal = Mammal.find(params[:id])
        render json: mammal
    end
end