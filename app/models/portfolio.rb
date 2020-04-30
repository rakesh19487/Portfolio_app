class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :subtitle, :thumb_image, :main_image

    include ImagePlaceholder
    
    after_initialize :set_image

    def self.order_by_created_at
        order(created_at: :desc)
    end    


    def set_image
        self.thumb_image ||= ImagePlaceholder.image_generator(300, 300)
        self.main_image ||= ImagePlaceholder.image_generator(600, 400)
    end



end
