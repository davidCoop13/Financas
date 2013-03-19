class Account < ActiveRecord::Base
  attr_accessible :name, :number

  has_many :transactions
  has_many :bill
  has_many :invoice  
end
