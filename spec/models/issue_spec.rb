require 'spec_helper'

describe Issue do
  it { should be_referenced_in(:owner).of_type(User)}
  it { should be_referenced_in(:project).of_type(Project)}
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:project_id)}
end
