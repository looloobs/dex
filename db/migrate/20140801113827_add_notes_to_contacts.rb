class AddNotesToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :note, :string
  end
end
