class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :subtitle, :thumb_image, :main_image
end
