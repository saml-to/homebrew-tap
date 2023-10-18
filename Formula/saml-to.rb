require "language/node"

class SamlTo < Formula
    desc "Command Line Interface for SAML.to"
    homepage "https://github.com/saml-to/cli"
    url "https://github.com/saml-to/cli/archive/refs/tags/2.1.3.tar.gz"
    sha256 "e4caa96510caf483f9e869008f46b734fecaf77d2aed969641356d1da5d85e7f"
    license "Apache-2.0"
  
    depends_on "node"
  
    def install
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      assert_match "Commands:", shell_output("#{bin}/saml-to --help")
    end
  end
  
