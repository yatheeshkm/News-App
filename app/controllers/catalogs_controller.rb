class CatalogsController < ApplicationController
  def index
    @catalogs = Catalog.all
   # render json: @catalogs
    #resond to do |format|
     # format.json @catalogs
    #end
  end
  
  def new
    @catalog = Catalog.new
  end

  def show
    @catalog = Catalog.find(params[:id])
    @items = []
    @items = @catalog.articles if @catalog.ctype == 'article'
    @items = @catalog.galleries if @catalog.ctype == 'gallery'
    @items = @catalog.polls if @catalog.ctype == 'poll'    
  end

  def create 
    @catalog = Catalog.new(catalog_params)
    if @catalog.save
      flash[:success] = "Catalog is created sucessfull!"
       redirect_to @catalog   
    else
     render 'new'
    end
  end

  def show 
    @catalog = Catalog.find(params[:id])
  end

  def edit
    @catalog = Catalog.find(params[:id])
  end

  def update 
    @catalog = Catalog.find(params[:id])
    if @catalog.update(catalog_params)
      flash[:success] = "Catalog is updated successfull!" 
      redirect_to @catalog
    else
      render 'edit' 
    end 

  end  
  def destroy
    @catalog = Catalog.find(params[:id])
    @catalog.destroy
    flash[:success] = "Catalog Deleted Successfull!"
    redirect_to @catalog
  end
    private
      def catalog_params
        params.require(:catalog).permit(:name, :ctype)
      end  
    
end

