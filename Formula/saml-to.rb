require "language/node"

class SamlTo < Formula
    desc "Command Line Interface for SAML.to"
    homepage "https://github.com/saml-to/cli"
    url "https://github.com/saml-to/cli/archive/refs/tags/1.0.37.tar.gz"
    sha256 "9d4e567f4d38c8d35d74237758ec11732b583aa63fa78abdce1a7031980f6bfc"
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
  