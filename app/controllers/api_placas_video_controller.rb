class ApiPlacasVideoController < ApplicationController
    def getAll
        @placasVideo = PlacaVideo.all

        render json: @placasVideo, status: 200
    end
end
