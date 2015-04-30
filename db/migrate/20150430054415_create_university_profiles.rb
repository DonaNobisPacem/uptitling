class CreateUniversityProfiles < ActiveRecord::Migration
  def change
    create_table :university_profiles do |t|
      t.string :classification
      t.string :description
      t.string :owner
      t.decimal :total_area_hectare
      t.decimal :total_area_meter
      t.string :acquisition
      t.string :titling_status
      t.datetime :date_issued
      t.integer :tax_dec_no
      t.text :remarks
      t.text :titling_step_eins
      t.text :titling_step_zwei
      t.text :titling_step_drei
      t.text :titling_step_vier
      t.text :titling_step_funf
      t.text :titling_step_sechs
      t.text :titling_step_sieben
      t.text :titling_step_acht
      t.text :titling_step_neun
      t.text :titling_step_zehn

      t.timestamps null: false
    end
  end
end
