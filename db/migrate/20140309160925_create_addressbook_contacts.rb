class CreateAddressbookContacts < ActiveRecord::Migration
  def change
    create_table :addressbook_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.datetime :deleted_at
      t.string :owner_id
      t.string :owner_type

      t.timestamps
    end

    add_index :addressbook_contacts, :owner_id
    add_index :addressbook_contacts, :deleted_at
  end
end
