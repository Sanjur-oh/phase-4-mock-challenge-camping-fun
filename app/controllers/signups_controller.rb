class SignupsController < ApplicationController
    # POST /signups
    def create
        signups = Signups.create!(signups_params)
        # if signups
        render json: signups, status: :created
        # else 
    end

    private

    def signups_params
        params.permit(camper_id:, activity_id:, time:)
    end

end
