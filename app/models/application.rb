class Application < ActiveRecord::Base
	attr_accessible :name, :email, :age, :phone, :video, :results, :training
end
