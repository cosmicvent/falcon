require 'spec_helper'

describe Project do
  it { should validate_presence_of(:title) }
  it { should be_referenced_in(:owner).of_type(User) }
  it { should have_many(:issues) }
end
