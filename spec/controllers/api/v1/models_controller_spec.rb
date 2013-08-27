require 'spec_helper'

describe Api::V1::ModelsController, :type => :controller do
  include RSpec::Rails::ControllerExampleGroup
  render_views
    
  describe "#index" do
    it "returns 200" do
      Model.destroy_all
      Model.create!(name: "test")
      get :index
      expect(response.code).to eq "200"
      expect(JSON.parse(response.body)).to eq [{"name" => 'test'}]
    end
  end
end
