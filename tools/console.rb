 # TRANSACTION TRACKER OO

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Aliya")
c2 = Customer.new("Mariana")

l1 = Location.new("Safeway")
l2 = Location.new("Winco")

t1 = Transaction.new(c1, l1, 5)
t2 = Transaction.new(c1, l2, 8)
t3 = Transaction.new(c2, l1, 20)
t4 = Transaction.new(c2, l1, 5)


binding.pry
0
