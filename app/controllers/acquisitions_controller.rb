class AcquisitionsController < ApplicationController
    def index
      acquisitions = Acquisition.all
      render json: acquisitions
    end

    def show 
        acquisition = Acquisition.find(params[:id])
        render json: acquisition 
    end

    def create 
        acquisition = Acquisition.create(acquisition_params)
        render json: acquisition
    end

    def destroy 
        acquisition = Acquisition.find(params[:id])
        acquisition.destroy 
        render json: acquisition
    end

    private
    def acquisition_params
        params.permit(:user_id, :artwork_id)
    end
end
