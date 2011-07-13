class Project
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :description

  #associations#
  belongs_to :owner, :class_name => "User"
  has_many :issues

  #validations#
  validates :title, :presence => true
end
