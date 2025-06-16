class Wickwall < ApplicationRecord
  #agrega método last_tweet a Wickwall 
  #Para ello se auxilia del método de clase
  #alectrico_text_field del module Yaffle::ActsAsYaffle
  acts_as_alectrico alectrico_text_field: :last_tweet
end
