class Image < ApplicationRecord

    belongs_to :project
    has_many :hotspots
    
end
