class Customer
  attr_reader :name
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
      transaction.customer == self
    end
  end

  def locations
    transactions.collect do |transaction|
      transaction.location
    end
  end

  def amounts
    transactions.collect do |transaction|
      transaction.amount
    end
  end

  def total_spent
    total_spent = 0
    amounts.each do |amount|
      total_spent += amount
    end
    total_spent
  end



end
