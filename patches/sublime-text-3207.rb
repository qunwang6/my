cask 'sublime-text-3207' do
  version '3.207'
  sha256 'ed090251aa852a628ec664c5aa1bdd57e941852458f3ac0128d869e6e012cdcb'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version.no_dots}.dmg"
  appcast "https://www.sublimetext.com/updates/#{version.major}/dev/appcast_osx.xml"
  name 'Sublime Text'
  homepage "https://www.sublimetext.com/#{version.major}dev"

  auto_updates true
  conflicts_with cask: 'sublime-text'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  zap trash: [
               "~/Library/Application Support/Sublime Text #{version.major}",
               "~/Library/Caches/com.sublimetext.#{version.major}",
               "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
               "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
             ]
end
