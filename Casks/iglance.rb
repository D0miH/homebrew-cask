cask 'iglance' do
  version '2.0'
  sha256 '7925bb29c57e53423176c40e3f4bb2251972092fbaa9753f5a6bf8ee3ebcd1e5'

  url "https://github.com/iglance/iglance/releases/download/v#{version}/iGlance_v#{version}.zip"
  appcast 'https://raw.githubusercontent.com/iglance/iGlance/master/Sparkle/updates/appcast.xml'
  name 'iGlance'
  homepage 'https://github.com/iglance/iGlance'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'iGlance.app'

  zap trash: [
               '~/Library/Caches/io.github.iglance.iGlance',
               '~/Library/Preferences/io.github.iglance.iGlance.plist',
             ]
end
