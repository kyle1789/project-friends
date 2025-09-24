class CreateFriends < ActiveRecord::Migration[8.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :second_name
      t.string :twitter
      t.string :email
      t.string :phone_num

      t.timestamps
    end
  end
end
