# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

def possible_ballerina
    ballerina << which("ballerina")
    ballerina
  end



class Cellery < Formula
  desc ""
  homepage ""
  url "https://cellery-installer-resources.s3.amazonaws.com/cellery-0.5.0-SNAPSHOT.zip"
  sha256 "756508e6643c6892354356d299845183e0efdad495eff0e53c951ab4e8821468"

# depends_on "hasinthaindrajee/cellery/ballerina"
 depends_on "python"
 depends_on "torsocks"
 if possible_ballerina
puts("ballerina installed....")
 end

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
