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

  def total_spent
    amount = 0
    transactions.select do |transaction|
      amount += transaction.amount
    end
    amount
  end


end
