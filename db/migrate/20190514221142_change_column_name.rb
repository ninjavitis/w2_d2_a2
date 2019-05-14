class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :monsters, :conition_immunity, :condition_immunity
  end
end
