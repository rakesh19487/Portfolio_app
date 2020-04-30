class Blog < ApplicationRecord

    belongs_to :topic

    enum status: {draft: 0, published: 1}
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates_presence_of :title, :body

    scope :order_by_created_at, -> { order( created_at: :desc ) }
end
