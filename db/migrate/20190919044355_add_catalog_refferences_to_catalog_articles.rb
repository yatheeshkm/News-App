class AddCatalogRefferencesToCatalogArticles < ActiveRecord::Migration[6.0]
  def change
    #t.belongs_to :catalog 
    #t.integer :catalog_id, null: false
    add_reference(:articles, :catalog)
    #add_belongs_to(:articles, :catalog)
  end
end  