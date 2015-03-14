# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  phone      :string(255)      not null
#  email      :string(255)
#  birth      :string(255)
#  male       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ActiveRecord::Base
end
