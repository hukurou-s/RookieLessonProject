# == Schema Information
#
# Table name: papers
#
#  id          :integer          not null, primary key
#  title_ja    :string           default("")
#  title_en    :string           default("")
#  lead_author :string
#  co_author   :string
#  abstract    :text             default("")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Paper < ApplicationRecord
end
