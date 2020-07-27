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
            description: self.description.truncate(100),
            thumbnail_url: self.thumbnail_url,
            category: self.category_preview,
            folder: self.folder_preview,
            tags: self.tags_preview
        }
    end

    # extracts only name and id from category
    def category_preview
        { id: self.category.id, name: self.category.name }
    end

    # extracts only name and id from folder
    def folder_preview
        { id: self.folder.id, name: self.folder.name }
    end

    # extracts only name and id from each tag
    def tags_preview
        self.tags.map do |tag|
            { id: tag.id, name: tag.name }
        end
    end
    
end
