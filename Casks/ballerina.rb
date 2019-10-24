cask 'ballerina' do
  version '0.991'
  sha256 :no_check

  url "https://product-dist.ballerina.io/downloads/1.0.1/ballerina-macos-installer-x64-1.0.1.pkg"

  name ''
  homepage ''

  pkg 'ballerina-macos-installer-x64-0.991.0.pkg'
  uninstall pkgutil: "org.ballerina.*"
end
