class PersonModel < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.text :bio
      t.string :image_url
      t.timestamps
    end
  end
end

