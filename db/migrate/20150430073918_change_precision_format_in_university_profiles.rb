class ChangePrecisionFormatInUniversityProfiles < ActiveRecord::Migration
  def up
    change_column :university_profiles, :total_area_hectare, :decimal, :precision => 16, :scale => 2
    change_column :university_profiles, :total_area_meter, :decimal, :precision => 16, :scale => 2
  end

  def down
    change_column :university_profiles, :total_area_hectare, :decimal
    change_column :university_profiles, :total_area_meter, :decimal
  end
end
