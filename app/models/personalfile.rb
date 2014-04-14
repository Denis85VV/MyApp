class Personalfile < ActiveRecord::Base
	belongs_to :rank
	belongs_to :specialty
	belongs_to :consist
	belongs_to :position
	belongs_to :recruitmentoffice
end
