class Employee
  
    attr_accessor :name, :salary, :manager
    
    @@all = []
    
    def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
    end
    
    def self.all
      @@all
    end
    
    def manager_name
      self.manager.name
    end
    
    def self.paid_over(num)
      self.all.select {|employee| employee.salary > num}    
    end
    
    def self.find_by_department(department)
      self.all.find {|employee| employee.manager.department}
    end
    
    def tax_bracket
      salary = self.salary
      bracket = @@all.select do |employee| 
        if employee.salary >= (salary - 1000) && employee.salary <= (salary + 1000)
        employee
        end
      end
      bracket
    end
    
  end
