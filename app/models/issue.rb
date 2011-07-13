class Issue
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :description

  #associations#
  belongs_to :owner, :class_name => "User"
  belongs_to :project

  #validations#
  validates :title, :presence => true
  validates :project_id, :presence => true


end
