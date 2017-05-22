class Score
  include Mongoid::Document
  validates :user, :presence => true

  field :user, type: String
end
