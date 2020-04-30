class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :subtitle, :thumb_image, :main_image


    after_initialize :set_defaults

    def self.order_by_created_at
        order(created_at: :desc)
    end    

    def set_defaults
        self.thumb_image ||= "https://via.placeholder.com/300"
        self.main_image ||= "https://via.placeholder.com/640x400"
    end



end
