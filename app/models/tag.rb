class Tag < ApplicationRecord

    has_many :pt_joins
    has_many :projects, through: :pt_joins
    
end
