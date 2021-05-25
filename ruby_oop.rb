class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
    p 'hello'
  end

  def print_info
    p "#{@first_name} #{@last_name} makes #{@salary} per year and is of #{@active} status."
  end

end

employee = Employee.new("Tito", "Burrito", "80000", "active")
employee.print_info