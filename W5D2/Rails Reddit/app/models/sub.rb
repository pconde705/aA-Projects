# == Schema Information
#
# Table name: subs
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :string           not null
#  moderator_id   :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sub < ApplicationRecord
   validates :description, :moderator_id, presence: true
   validates :title, presence: true, uniqueness: true

  belongs_to :user,
    class_name: :User,
    foreign_key: :moderator_id

  has_many :post_subs, inverse_of: :post, dependent: :destroy

  has_many :posts, through: :post_subs, source: :post
end
