class Catalog < ApplicationRecord
    enum ctype: { article: 0, poll: 1, gallery: 2 }
    validates :name, presence: true
    validates :ctype, inclusion: { in: %w(article poll gallery),
     message: "%{value} is not valid catalog_type" }
     has_many :articles 
     has_many :polls
     has_many :galleries 
end
