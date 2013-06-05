require 'spec_helper'

describe PostsController do

  describe "GET to #index" do
    let!(:posts) { [FactoryGirl.create(:post)] }
    
    before do
      get :index
    end

    it { should respond_with(:success) }
    it "assigns the post" do
      assigns[:posts].should == posts
    end
  end
end
