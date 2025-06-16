class ApplicationRecord < ActiveRecord::Base
  include Alectrico::ActsAsAlectrico
  
  self.abstract_class = true
  # primary_abstract_class
end
