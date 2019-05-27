class Transaction
attr_reader :customer, :location
attr_accessor :amount
@@all = []

  def initialize(customer, location, amount)
    @customer = customer
    @location = location
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end



end
