class RRequirement < Requirement
  fatal true

  satisfy(:build_env => false) { which("R") }

end

cask 'cellery' do
  version 'latest'
  sha256 :no_check

  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-macos-installer-x64-latest.pkg"
  name 'Cellery'
  homepage 'https://wso2-cellery.github.io/'
  
  depends_on cask: 'ballerina'
  depends_on formula: 'python'
  depends_on formula: 'torsocks'
  pkg 'cellery-macos-installer-x64-latest.pkg'
 
  uninstall pkgutil: 'org.cellery.*'

end
