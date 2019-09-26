class Article < ApplicationRecord
    enum status: { created: 0, composed: 1, published: 2, recomposed: 3, republished: 4, unpublished: 5, rejected: 6}

     #has_many :media as :mediable
     #has_many :thumbnail as :thumbnailable
     has_many :comments,  as: :commentable 
     
end
