def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
    :uid => '12345',
    :username => 'Phil TestPerson',
    :email => 'phil.test@testemail.org'
  })
end