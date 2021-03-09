class MapController < ApplicationController
    def create
        map = Map.new(map_params)
        map.save
        render :json => {message: "map created", map: map}
    end
    def show
        map = Map.find(params[:id])
        map_name = map.name
        render :json => map
    end
    private
        def map_params
            params.require(:map).permit(:tiles, :entities, :exits, :name)
        end
end