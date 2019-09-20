class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
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
