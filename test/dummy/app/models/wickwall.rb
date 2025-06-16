class Wickwall < ApplicationRecord
  #agrega método last_tweet a Wickwall 
  #Para ello se auxilia del método de clase
  #yaffle_text_field del module Yaffle::ActsAsYaffle
  acts_as_yaffle yaffle_text_field: :last_tweet
end
