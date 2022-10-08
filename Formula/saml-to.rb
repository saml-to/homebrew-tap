require "language/node"

class SamlTo < Formula
    desc "Command Line Interface for SAML.to"
    homepage "https://github.com/saml-to/cli"
    url "https://github.com/saml-to/cli/archive/refs/tags/2.0.2.tar.gz"
    sha256 "7d7196a5cf5f9f95ee7ec7db4724452313783d6ab32ec7613a379c8e29652120"
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
  
