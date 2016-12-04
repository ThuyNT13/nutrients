require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.new(username: "user", email: "user@email.com", password: "password")}

  describe "attributes" do
    it "has a username" do
      expect(user.username).to eq("user")
    end
    it "has an email" do
      expect(user.email).to eq("user@email.com")
    end
    it "has a password" do
      expect(user.password).to eq("password")
    end
  end
end
