require 'spec_helper'

describe TwitteroauthController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'login'" do
    it "returns http success" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'finalize'" do
    it "returns http success" do
      get 'finalize'
      response.should be_success
    end
  end

end
