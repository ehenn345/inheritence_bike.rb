class Employee

  attr_reader :first_name, :last_name, :input_salary, :input_active
  attr_writer :first_name

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    "#{@first_name} #{@last_name} makes #{@salary.round} per year "
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  # def first_name  #getter/reader method
  #   @first_name
  # end

  # def first_name=(input_name) #writer/setter method
  #   @first_name = input_name
  # end
end

employee1 = Employee.new({:first_name => "Tito", :last_name => "Burrito", :salary => 80000, :active => true})
p employee1.print_info
p employee1.give_annual_raise

employee1.first_name=("Pooh")
p employee1.first_name
p employee1.print_info

employee2 = Employee.new({:first_name => "Joe", :last_name => "Bord", :salary => 20000, :active => true})

class Manager < Employee #Manager inherits everything from the employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end
  
  def send_report
    p 'report sending'
  end

  def give_all_raises
    p 'you get a raise'
    p @employees[0].give_annual_raise
    p @employees[1].give_annual_raise
  end

end

manager = Manager.new({:first_name => "Huxley", :last_name => "Jones", :salary => 90000, :active => true, :employees => [employee1, employee2]})

# p manager.print_info
# manager.send_report
# p manager
manager.give_all_raises

p employee1.print_info
p employee2.print_info

