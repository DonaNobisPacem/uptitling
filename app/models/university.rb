class University < ActiveRecord::Base
	validates :univ_name, presence: true, uniqueness: true
	has_many :university_profiles, :dependent => :destroy
	accepts_nested_attributes_for :university_profiles, :allow_destroy => true
	mount_uploader :image, ImageUploader
end
