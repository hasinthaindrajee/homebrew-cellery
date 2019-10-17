# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cellery < Formula
  desc ""
  homepage ""
  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-0.5.0-SNAPSHOT.zip"
  sha256 "99dce22672ee7b175c89c0ec800f5722ab5eb1887d9b1f1fb3c1ff5bf877376d"

 depends_on "hasinthaindrajee/cellery/ballerina"
 depends_on "python"
 depends_on "torsocks"

  def install
# bin.install "Library/Cellery/cellery"
    bin.install "/"
    libexec.install Dir["*"]
  end

  test do
  end
end
