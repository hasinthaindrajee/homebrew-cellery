# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cellery < Formula
  desc ""
  homepage ""
  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-0.5.0-SNAPSHOT.zip"
  sha256 "8bfa2cf209fc7385a32eb7cf559a801ddece37e8150b4a891bc482b67b7dbeb3"

 depends_on "hasinthaindrajee/cellery/ballerina"
 depends_on "python"
 depends_on "torsocks"

  def install
# bin.install "Library/Cellery/cellery"
    bin.install "cellery"
    libexec.install Dir["*"]
     mkdir: '/usr/local/Cellar/test'
   # (/usr/local/Cellar/"test").install "cellery"
   # FileUtils.cp("cellery", ".")
  end

  test do
  end
end
