class Tag < ApplicationRecord

    has_many :projects, through: :pt_join
    
end
