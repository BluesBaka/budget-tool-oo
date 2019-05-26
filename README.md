# TRANSACTION TRACKER OO

Run `bundle install` and `ruby tools/console.rb` in your terminal to start this program

For this exercise, you will be creating a program to track transactions between users and store locations. For our purposes, a `Customer` has many `Transaction`s, a `Location` has many `Transaction`s, and `Transaction`s belong to both `Customer` and `Location`.

## Deliverables

The below are the methods that must be present on your models. Feel free to build out any helper methods if needed.

### Basic Class Methods and Properties

#### Build the following methods on the `Customer` class

A customer is initialized with a name as a string. A name **cannot** be changed after it is initialized.

X `Customer#name`
  + Returns the name of the Customer as a string
X `Customer.all`
  + Returns an array of all Customer instances

---

#### Build the following methods on the `Transaction` class

An transaction is initialized with an customer as a Customer object, a location as a Location object, and amount as a number. A transaction **cannot** change its customer or location after it is has been initialized.

X `Transaction.all`
  + Returns an array of all Transaction instances
X `Transaction#customer`
  + Returns the customer for that given Transaction
X `Transaction#location`
  + Returns the location for that given transaction
X `Transaction#amount`
  + Returns the amount spent on that given transaction

---

#### Build the following methods on the `Location` class

A location is initialized with a name as a string. The name of the location **can be** changed after being initialized.

X `Location#name`
  + Returns the name of this location
X `Location.all`
  + Returns an array of all Location instances

---

### Associations and Aggregate Methods

#### `Customer`


X `Customer#transactions`
  + Returns an array of the transactions associated with that customer
X `Customer#locations`
  + Returns an array of location instances that a customer has shopped at
X `Customers#total_spent`
  + totals and returns the total amount that a user has spent at various locations

#### `Location`

X `Location#transactions`
  + Returns an array of the transactions associated with that location
X `Location#customers`
  + Returns an array of customer instances who have purchased from this location
+ `Location#unique_customers`
  + Returns an array of all unique customers (ex: if someone has purchased from here more than once, they would still only show once in this array. There is Ruby method that does this for you that you can google for)
