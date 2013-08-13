class Account < ActiveRecord::Base
  attr_accessible :name, :balance
  belongs_to :bank
end