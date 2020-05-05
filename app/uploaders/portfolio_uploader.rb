class PortfolioUploader < CarrierWave::Uploader::Base
  
  # storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  
  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
  
  CarrierWave.configure do |config|  
    config.cache_storage = :file  
  end

  include Cloudinary::CarrierWave
  version :standard do
    process :eager => true
    process :resize_to_fill => [1080, 1080, :center]          
  end

  version :thumbnail do
    eager
    resize_to_fit(100, 100)
  end


end
