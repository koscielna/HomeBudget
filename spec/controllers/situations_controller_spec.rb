require 'spec_helper'

describe SituationsController do
  context '#attach' do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]

      @user = User.new({
        email: 'email@email.com',
        password: 'qwerty123',
        password_confirmation: 'qwerty123'
      })
      @user.save!

      @situation = Situation.create

      sign_in @user
    end

    it 'attaches particular user only once' do
      expect do
        post :attach, {email: @user.email, id: @situation.id}
        post :attach, {email: @user.email, id: @situation.id}

      end.to change{@situation.participations.count}.by(1)
    end
  end
end
