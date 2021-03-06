# name: Steam authentication with Discourse
# about: Authenticate with Discourse with Steam
# version: 2.0.1
# author: J. de Faye, tgxworld

gem 'omniauth-steam', '1.0.6'

if respond_to?(:register_svg_icon)
  register_svg_icon "fab fa-steam"
end

register_asset 'stylesheets/steam-login.scss'

[
  "../lib/auth/steam_authenticator.rb",
  "../lib/validators/enable_steam_logins_validator.rb"
].each { |path| load File.expand_path(path, __FILE__) }

auth_provider authenticator: Auth::SteamAuthenticator.new, icon: 'steam'
