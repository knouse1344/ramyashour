class Application < ActiveRecord::Base
	attr_accessible :name, :email, :age, :phone, :video, :results, :training
	validates :name, presence: true
	validates :email, presence: true
	validates :phone, presence: true
	validates :age, presence: true
	validates :video, presence: true
	validates :results, presence: true
	validates :training, presence: true
end
