class PollsController < ApplicationController
    def index
        @catalog = Catalog.find(params[:catalog_id])
        @polls =
    end
    
end
