class Project < ApplicationRecord

    belongs_to :category
    belongs_to :folder
    has_many :images
    has_many :comments
    has_many :pt_joins
    has_many :tags, through: :pt_joins

    # determines which attributes to include in a preview of the project
    def preview
        {
            title: self.title,
            #shortens description to 100 chars
            description: self.description.truncate(100) + '...',
            category: self.category,
            folder: self.folder,
            tags: self.tags
        }
    end

    def full

    end
    
end
