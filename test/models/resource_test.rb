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
require "test_helper"

class ResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
