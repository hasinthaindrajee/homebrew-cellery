# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class RRequirement < Requirement
  fatal true

  satisfy(:build_env => false) {
   puts(which("ballerina")
   depends_on "hasinthaindrajee/cellery/ballerina"
   true
}


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
  sha256 "13a4d4449f63a127892afe981b0dd7dde2d939687b0a18a57acc9e52c528ddf4"

# depends_on "hasinthaindrajee/cellery/ballerina"
 depends_on "python"
 depends_on "torsocks"
depends_on RRequirement


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
