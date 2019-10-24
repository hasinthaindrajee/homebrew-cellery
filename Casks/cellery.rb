class RRequirement < Requirement
  fatal true

  satisfy(:build_env => false) { which("ballerina") }
end

cask 'cellery' do
  version '0.5.0'
  sha256 :no_check

  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-macos-installer-x64-latest.pkg"
  name 'Cellery'
  homepage ''

puts(RRequirement)
 depends_on cask: 'ballerina' unless RRequirement.satisfied()
 depends_on formula: 'python'
 depends_on formula: 'torsocks'

 pkg 'cellery-macos-installer-x64-latest.pkg'
 uninstall pkgutil: 'org.cellery.*'

end
