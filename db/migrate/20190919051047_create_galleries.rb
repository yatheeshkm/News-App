class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :description
      t.string :text
      t.string :status
      t.string :published_at
      t.string :datatime

      t.timestamps
    end
  end
end
