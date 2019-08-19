# == Schema Information
#
# Table name: questions
#
#  id           :bigint           not null, primary key
#  answer       :string
#  distractor_1 :string
#  distractor_2 :string
#  question     :string
#  type         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  quiz_id      :integer
#

class Question < ApplicationRecord
  belongs_to :quiz, counter_cache: true, optional: true

  default_scope { order(created_at: :desc) }

  validates :question, :answer, :type, presence: true
end