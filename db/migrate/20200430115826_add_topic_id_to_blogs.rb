class AddTopicIdToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :topic_id, :integer
  end
end
