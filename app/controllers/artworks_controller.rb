class ArtworksController < ApplicationController
    def index
        artworks = Artwork.all
        render json: artworks
    end

    def show
        artwork = Artwork.find(params[:id])
        render json: artwork
    end

    def create
        artwork = Artwork.create(artwork_params)
        # activestorage
        # if artwork.valid?
            # artwork.image.attach(params.require[:image])
            render json: artwork
        # end
    end

    def update 
        artwork = Artwork.find(params[:id])
        artwork.update(artwork_params)
        render json: artwork
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        render json: artwork 
    end

    private
    def artwork_params
        # params.require(:artwork).permit(:title, :image, :user_id)
        params.permit(:title, :image, :user_id)
    end

end
