class Trivium
  include Mongoid::Document
  validates :question, :presence => true
  validates :answer, :presence => true
  validates_length_of :words_in_question, minimum: 3, too_short: 'Your question must be at least three words.'

  field :question, type: String
  field :answer, type: String

  private

  def words_in_question
    return question.scan(/\w+/) if question
    0
  end
end
