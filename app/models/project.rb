class Project
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :description

  #associations#
  belongs_to :owner, :class_name => "User"
end
