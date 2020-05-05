class Portfolio < ApplicationRecord

    has_many :technologies
    accepts_nested_attributes_for :technologies, reject_if: lambda { |attr| attr[:name].blank?   }

    validates_presence_of :title, :body, :subtitle

    
    
    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader
    
    
    def self.order_by_created_at
        order(created_at: :desc)
    end    
    
    scope :by_position, -> { order('position ASC').all }

    ############### Moved to application helper ########################
    # include ImagePlaceholder
    # after_initialize :set_image
    
    # def set_image
    #     self.thumb_image ||= ImagePlaceholder.image_generator(300, 300)
    #     self.main_image ||= ImagePlaceholder.image_generator(600, 400)
    # end
    ############### Moved to application helper ########################



end
