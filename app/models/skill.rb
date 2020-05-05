class Skill < ApplicationRecord
    validates_presence_of :title, :percentage
    
    ############### Moved to application helper ########################
    # include ImagePlaceholder
    # after_initialize :set_badge
    
    # def set_badge
        # self.badge ||= ImagePlaceholder.image_generator(150, 150)
    # end    
    ############### Moved to application helper ########################
end
