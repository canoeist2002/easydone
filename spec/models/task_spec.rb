require 'spec_helper'

describe Task do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @list = user.lists.build( name: "test" )
    @task = @list.tasks.build( name: "test_task" )
  end

  subject { @task }

  it { should be_valid }
  its(:finished) { should be_false }
  
end
