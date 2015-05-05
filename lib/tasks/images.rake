namespace :images do
  desc "Recreate images"
  task :recreate_image => :environment do  	
    uploader = ImageUploader.new
  	my_file = File.open(File.join(Rails.root, '/app/assets/images/upseal.png'))
  	uploader.store!(my_file)

    University.find_each do |university|
  	  university.image.recreate_versions! if university.image?
  	end
  end
end