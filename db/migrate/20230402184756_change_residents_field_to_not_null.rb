class ChangeResidentsFieldToNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :residents, :full_name, false
    change_column_null :residents, :cpf, false
    change_column_null :residents, :cns, false
    change_column_null :residents, :email, false
    change_column_null :residents, :birth_date, false
    change_column_null :residents, :phone_number, false
  end
end
