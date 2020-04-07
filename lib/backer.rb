class Backer
  
  attr_accessor :backed_projects
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end 
  
  def backed_project(project)
    @backed_projects << project
    project.add_backer(self) if !project.backers.include?(self)
  end
end