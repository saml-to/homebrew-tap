require "language/node"

class SamlTo < Formula
    desc "Command Line Interface for SAML.to"
    homepage "https://github.com/saml-to/cli"
    url "https://github.com/saml-to/cli/archive/refs/tags/2.1.4.tar.gz"
    sha256 "3da8fd22a6d6bfee396273467468dbb5b9cf196dbe2084b6681a7957310afa01"
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
  
