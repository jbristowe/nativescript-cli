# coding: utf-8

# Only the user can manually download and install Xcode from AppStore 
puts "Installing Xcode... Please, click 'Get' or 'Update' to install Xcode from the App Store."
`open 'macappstore://itunes.apple.com/us/app/xcode/id497799835'`

until `pkgutil --pkg-info=com.apple.pkg.Xcode`.include? "version" do
  puts "Waiting for Xcode do finish installing..."
  sleep(30)
end

puts "You need to accept the Xcode license agreement to be able to use the compilers. (You might need to provide your password.)"
`sudo gcc`

# Install all other dependencies
puts "Installing Homebrew... (You might need to provide your password.)"
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

puts "Installing Homebrew-Cask... (You might need to provide your password.)"
`brew install caskroom/cask/brew-cask`

puts "Installing the Java SE Development Kit... (You might need to provide your password.)"
`brew cask install java`

puts "Creating Homebrew formula for NativeScript..."
File.open("/usr/local/Library/Formula/native-script.rb", "w:utf-8") do |f|
  f.write DATA.read
end

puts "Installing NativeScript formula..."
`brew install native-script`

__END__

class NativeScript < Formula
  desc "NativeScript"
  homepage "https://www.nativescript.org"
  version "1.1.1"
  url "https://raw.githubusercontent.com/NativeScript/nativescript-cli/brew/setup/empty.tar.gz"
  sha256 "813e1b809c094d29255191c14892a32a498e2ca298abbf5ce5cb4081faa4e88f"

  depends_on :macos => :yosemite
  depends_on "pkg-config" => :build
  depends_on "node"
  depends_on "ant"
  depends_on "android-sdk"

  def install
    ohai "Installing NativeScript CLI..."
    system "/usr/local/bin/npm install -g nativescript"

    ohai "Installing Android SDK packages. This might take some time, please, be patient."
    system "echo yes | android update sdk --filter tools,platform-tools,android-22,android-17,build-tools-22.0.1,sys-img-x86-android-22 --all --no-ui"
  end
end
