class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :subtitle, :thumb_image, :main_image

    def self.order_by_created_at
        order(created_at: :desc)
    end    
end
