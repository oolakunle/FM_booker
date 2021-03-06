# == Schema Information
#
# Table name: bookers
#
#  id              :integer          not null, primary key
#  email           :text
#  name            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  company_id      :integer
#

class Booker < ApplicationRecord
  has_secure_password
  has_many :jobs
  belongs_to :company, :optional => true

  validates :email, :presence => true, :uniqueness => true
end
