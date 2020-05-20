# == Schema Information
#
# Table name: resources
#
#  id         :bigint           not null, primary key
#  link       :string
#  repository :string
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_resources_on_title_and_link_and_repository  (title,link,repository)
#
class Resource < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................

  # relationships .............................................................
  belongs_to :admin, class_name: "Admin", foreign_key: "user_id", optional: true

  # validations ...............................................................
  validates :title, presence: true, uniqueness: true

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  acts_as_taggable_on :tags

  # class methods .............................................................
  # class << self
  # end

  # public instance methods ...................................................

  # protected instance methods ................................................
  # protected

  # private instance methods ..................................................
  # private
end
