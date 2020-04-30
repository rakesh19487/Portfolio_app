module ImagePlaceholder
    extend ActiveSupport::Concern

    def self.image_generator(height, width)
        return "https://via.placeholder.com/#{height}x#{width}"
    end    
end    