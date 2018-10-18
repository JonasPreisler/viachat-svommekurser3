Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    '64QB8pjqmZA2bNSysMMNQps5rherOHkU',
    'hAsmbFlnPEX3vPxwHpqM6xK04_r9hUoRAziaIDZfIG1hSaAChPo_cAUfCHvmVo8x',
    'jonaspreisler.eu.auth0.com',
    callback_path: '/auth/oauth2/callback',
    authorize_params: {
      scope: 'openid profile'
    }
  )
end