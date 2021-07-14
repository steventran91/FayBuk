class Comment < ApplicationRecord
    validates :body, :post_id, :commenter_id, presence: true 


    belongs_to :post, 
    foreign_key: :post_id, 
    class_name: :Post 

    belongs_to :author, 
    primary_key: :id,
    foreign_key: :commenter_id,
    class_name: :User 

    has_many :likes, dependent: :destroy

    
end
