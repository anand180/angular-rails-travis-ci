require 'spec_helper'

describe Model do
  describe "validations" do
    it "takes a name attribute" do
      Model.destroy_all
      m = Model.new(name: "name")
      m.save!
      expect(Model.first.name).to eq "name"
    end
  end
end
