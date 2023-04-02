class ChangeAddressFieldToNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :addresses, :cep, false
    change_column_null :addresses, :city, false
    change_column_null :addresses, :neighborhood, false
    change_column_null :addresses, :state, false
    change_column_null :addresses, :street, false
  end
end
