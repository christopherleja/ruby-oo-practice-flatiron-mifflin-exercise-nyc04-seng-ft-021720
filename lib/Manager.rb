class Manager
  
  attr_accessor :name, :department, :age
  
  @@all = []
  
  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def employees
    Employee.all.select { |employee| employee.manager == self} 
  end
  
  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end
  
  def self.all_departments
    self.all.map {|manager| manager.department}
  end
  
  def self.manager_ages
    self.all.sum {|manager| manager.age}
  end
  
  def self.average_age
    manager_ages.to_f / @@all.length.to_f
  end
  
  def self.all
    @@all
  end
  
  
end
