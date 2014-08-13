class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :comments
      t.integer :contact_id

      t.timestamps
    end
  end
end
