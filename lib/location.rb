class Location
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def transactions
    Transaction.all.select do |transaction|
      transaction.location == self
    end
  end

  def customers
    transactions.select do |transaction|
      transaction.customer
    end
  end

  def unique_customers
    customers.uniq
    end
  end

end
