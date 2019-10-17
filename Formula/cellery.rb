# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cellery < Formula
  desc ""
  homepage ""
  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-0.5.0-SNAPSHOT.zip"
  sha256 "bc4955c1e2822453a41bf1093bd3a45e33502135d53eb38d3d77e6a8437217d2"

 depends_on "hasinthaindrajee/cellery/ballerina"
 depends_on "python"
 depends_on "torsocks"

  def install
    bin.install "Library/Cellery/"
   # bin.install "Library/Cellery/cellery"
    libexec.install Dir["*"]
  end

  test do
  end
end
