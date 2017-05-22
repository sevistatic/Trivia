class Score
  include Mongoid::Document
  field :user, type: String
  field :value, type: String
end
