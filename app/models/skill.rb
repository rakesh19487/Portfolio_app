class Skill < ApplicationRecord
    include ImagePlaceholder
    validates_presence_of :title, :percentage

    after_initialize :set_badge
    
    def set_badge
        self.badge ||= ImagePlaceholder.image_generator(150, 150)
    end    
end
