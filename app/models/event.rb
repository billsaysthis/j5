class Event < ActiveRecord::Base
  attr_accessible :description, :occurs_on, :status, :title
end
