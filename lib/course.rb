class Course
  @@all=[]
  attr_accessor :title, :schedule, :description

  def initialize
  end

  def self.all
    @@all
  end
    
end
