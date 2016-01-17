module DeviseControllerLoginMacros
  def login_admin
    before do
      @request.env['devise.mapping'] = Devise.mappings[:admin]
      admin = FactoryGirl.create :admin
      sign_in :user, admin
    end
  end

  def login_user
    before do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryGirl.create :user
      sign_in user
    end
  end
end
