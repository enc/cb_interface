require 'spec_helper'

describe BaseController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'search'" do
    it "returns http success" do
      get 'search'
      response.should be_success
    end
  end

  describe "GET 'product'" do
    it "returns http success" do
      get 'product'
      response.should be_success
    end
  end

  describe "GET 'company'" do
    it "returns http success" do
      get 'company'
      response.should be_success
    end
  end

end
