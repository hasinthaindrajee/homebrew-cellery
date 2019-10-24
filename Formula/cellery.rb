# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cellery < Formula
  desc ""
  homepage ""
  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-0.5.0-SNAPSHOT.zip"
  sha256 "1543765f62b4848d79af692c1b6cdc095f50f0340fd821d2440bd051bb8f115a"

# depends_on "hasinthaindrajee/cellery/ballerina"
 depends_on "python"
 depends_on "torsocks"

  def install
# bin.install "Library/Cellery/cellery"
    bin.install "cellery"
    libexec.install Dir["*"]
#    mkdir: '/usr/local/Cellar/test'
   # (/usr/local/Cellar/"test").install "cellery"
   # FileUtils.cp("cellery", ".")

   system "mkdir", "/Users/hasinthaindrajee/lol"
 
  end

  test do
  end
end
