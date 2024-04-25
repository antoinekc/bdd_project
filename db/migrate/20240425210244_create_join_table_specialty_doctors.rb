class CreateJoinTableSpecialtyDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :join_table_patient_doctors do |t|
      t.belongs_to :doctors, index: true
      t.belongs_to :specialties, index: true
      t.timestamps
    end
  end
end
