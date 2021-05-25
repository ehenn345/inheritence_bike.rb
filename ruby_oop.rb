class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    p "#{@first_name} #{@last_name} makes #{@salary.round} per year "
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def first_name  #getter/reader method
    @first_name
  end

  def first_name=(input_name) #writer/setter method
    @first_name = input_name
  end
end

employee1 = Employee.new("Tito", "Burrito", 80000, true)
p employee1.give_annual_raise
p employee1.print_info
employee1.first_name=("Pooh")
p employee1.first_name
p employee1.print_info

employee2 = Employee.new("Jim", "Joe", 60000, false)
employee2.print_info
employee2.give_annual_raise
employee2.print_info