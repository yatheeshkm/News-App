class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :url
      t.references :mediable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
