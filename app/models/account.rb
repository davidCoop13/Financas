class Account < ActiveRecord::Base
  attr_accessible :name, :number

  has_many :transaction
  has_many :bill
  has_many :invoice  
end
