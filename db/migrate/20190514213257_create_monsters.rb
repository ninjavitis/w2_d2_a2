class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :tags
      t.integer :ac
      t.integer :hp
      t.integer :ground_speed
      t.integer :fly_speed
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.string :damage_immunity
      t.string :conition_immunity
      t.string :senses
      t.string :languages
      t.integer :challenge
      t.string :action

      t.timestamps
    end
  end
end
