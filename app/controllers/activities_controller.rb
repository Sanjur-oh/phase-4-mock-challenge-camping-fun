class ActivitiesController < ApplicationController
    #GET /activities
    def index
        render json: Activity.all, status: :ok
    end


    # DELETE /activities/:id
    def destroy
        activity = find_activity
        activity.destroy
        head :no_content, status: :ok

    end

    private
    
    def find_activity
        Activity.find(params[:id])
    end



end
