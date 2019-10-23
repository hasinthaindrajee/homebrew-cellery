# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cellery < Formula
  desc ""
  homepage ""
  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-0.5.0-SNAPSHOT.zip"
  sha256 "13a4d4449f63a127892afe981b0dd7dde2d939687b0a18a57acc9e52c528ddf4"

# depends_on "hasinthaindrajee/cellery/ballerina"
 depends_on "python"
 depends_on "torsocks"
puts("printing some logs....")
puts(which("ballerina") == nil)
puts("after put logs")
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
