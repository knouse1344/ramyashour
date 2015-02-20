class Application < ActiveRecord::Base
	attr_accessible :name, :email, :age, :phone, :results, :training
end
