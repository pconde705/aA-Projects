# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord


  has_many :enrollments,
  class_name: :Enrollment,
  primary_key: :id,
  foreign_key: :student_id

  #through associations must be below the has_many/belongs_to associations
  has_many :courses,
  through: :enrollments,
  source: :users
end