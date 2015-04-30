class ChangeFieldTypesInUniversityProfiles < ActiveRecord::Migration
  def up
    change_column :university_profiles, :tax_dec_no, :string
  end

  def down
    change_column :university_profiles, :tax_dec_no, :integer
  end
end
