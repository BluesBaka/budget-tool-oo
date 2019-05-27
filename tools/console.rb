 # TRANSACTION TRACKER OO

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Aliya")
c2 = Customer.new("Angelica")

l1 = Location.new("Safeway")
l2 = Location.new("QFC")

t1 = Transaction.new(c1, l1, 10)
t2 = Transaction.new(c1, l2, 5)
t3 = Transaction.new(c2, l1, 8)
t4 = Transaction.new(c1, l1, 7)



binding.pry
0
