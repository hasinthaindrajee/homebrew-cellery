class RRequirement < Requirement
  fatal true

  satisfy(:build_env => false) { which("ballerina") }
end

cask 'cellery' do
  version '0.5.0'
  sha256 :no_check

  url "http://10.100.5.78:8000/cellery-brew-cask.zip"
  name 'Cellery'
  homepage ''

 depends on cask: hasinthaindrajee/ballerina unless RRequirement?
 depends_on formula: 'python'
 depends_on formula: 'torsocks'

 pkg 'cellery.pkg'
 uninstall pkgutil: 'org.cellery.*'

end
