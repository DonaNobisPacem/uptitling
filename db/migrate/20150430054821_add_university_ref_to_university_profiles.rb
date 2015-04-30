class AddUniversityRefToUniversityProfiles < ActiveRecord::Migration
  def change
    add_reference :university_profiles, :university, index: true, foreign_key: true
  end
end
