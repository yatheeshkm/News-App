class ChangeTypeToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :galleries, :status, 'integer USING CAST(status AS integer)'
    change_column :polls, :status, 'integer USING CAST(status AS integer)'
  end
end
