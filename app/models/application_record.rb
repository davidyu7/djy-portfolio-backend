class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # returns all projects associated with self in preview form - used in controllers for categories, folders, and tags
  def project_previews
    self.projects.map{ |project| project.preview }
  end
  
end
