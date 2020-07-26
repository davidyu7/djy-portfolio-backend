class Project < ApplicationRecord

    belongs_to :category
    belongs_to :folder
    has_many :images
    has_many :comments
    has_many :pt_joins
    has_many :tags, through: :pt_joins
    
end
