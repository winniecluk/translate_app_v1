class Bid < ApplicationRecord
  belongs_to :project
  belongs_to :user

  def find_project
    Project.find(project_id)
  end
end
