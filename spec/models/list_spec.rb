require 'spec_helper'

describe List do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @list = user.lists.build( name: "test" )
  end

  describe "with blank name" do
    before { @list.name = " " }
    it { should_not be_valid }
  end
end
