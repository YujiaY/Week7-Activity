class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.text :anime
      t.text :movie
      t.text :television_show

      t.timestamps
    end
  end
end
