# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class RRequirement < Requirement
  fatal true
  puts(which("ballerina"))
  satisfy(:build_env => false) {which("ballerina")}

  def message; <<~EOS
    R is required; install it via one of:
      brew install r
      brew cask install r-app
  EOS
  end
end

class Cellery < Formula
  desc ""
  homepage ""
  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-0.5.0-SNAPSHOT.zip"
  sha256 "756508e6643c6892354356d299845183e0efdad495eff0e53c951ab4e8821468"

# depends_on "hasinthaindrajee/cellery/ballerina"
 depends_on "python"
 depends_on "torsocks"
 depends_on RRequirement

puts(which("ballerina"))
  def install
# bin.install "Library/Cellery/cellery"
    bin.install "cellery"
    libexec.install Dir["*"]
#    mkdir: '/usr/local/Cellar/test'
   # (/usr/local/Cellar/"test").install "cellery"
   # FileUtils.cp("cellery", ".")
  end

  test do
  end
end
