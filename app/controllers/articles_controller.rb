class ArticlesController < ApplicationController

    def index 
        @catalogs=Catalog.find(params[:id])
        @article = @catalogs.articles.all
    end    
    def new 
     @article = Articles.new
    end   

    def create 
    @article = Articel.new(articel_params)

     if @articel.save 
        redirect_to @article
       else 
        render 'new'
      end 
    end   

    def show 
     
    end



end
