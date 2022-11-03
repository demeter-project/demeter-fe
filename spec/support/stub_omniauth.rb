def stub_omniauth(user)
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
    uid: user.uid,
    provider: user.provider
  })
end
