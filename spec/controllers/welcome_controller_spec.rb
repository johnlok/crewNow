require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do

  describe "GET index:show" do
    it "returns http success" do
      get :index:show
      expect(response).to be_success
    end
  end

end
