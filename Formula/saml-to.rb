class SamlTo < Formula
    desc "Command Line Interface for SAML.to"
    homepage "https://github.com/saml-to/cli"
    url "https://github.com/saml-to/cli/archive/refs/tags/1.0.35-0.tar.gz"
    sha256 "2a8fc5d484ab526dd14940cbcab9ac47a9c188b4b3156bd107826a2790ac5558"
    license "Apache-2.0"
  
    depends_on "node@14"
  
    def install
      system libexec/"bin/npm", "install", "-g", buildpath
    end
  
    test do
      assert_match "Commands:", shell_output("#{bin}/saml-to --help")
    end
  end
  