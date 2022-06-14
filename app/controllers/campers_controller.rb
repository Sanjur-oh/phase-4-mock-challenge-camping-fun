class CampersController < ApplicationController

    #GET /campers
    def index
        render json: Camper.all, status: :ok
    end
    

    #GET /campers/:id
    def show
        camper = Camper.find(params[:id])
        render json: camper, status: :ok
    end

    #POST /campers
    def create
        camper = Camper.create!(camper_params)
        # if camper 
        render json: camper, status: :created
        # else 
    end

    private

    def camper_params
        params.permit(:name, :age)
    end




end
