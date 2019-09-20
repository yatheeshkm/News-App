class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :long_description
      t.string :text
      t.string :short_description
      t.string :status
      t.string :published_at
      t.string :datetime

      t.timestamps
    end
  end
end
