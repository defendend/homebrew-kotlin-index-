class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java, iOS/Swift/ObjC, Perl, Python, Go, Proto, WSDL, and C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.8.0/ast-index-3.8.0-darwin-arm64.tar.gz"
  sha256 "f22b1e89d45d3312217b2333192cb4e16f38507331c244ab62ade7cefe3386e2"
  license "MIT"
  version "3.8.0"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.8.0", shell_output("#{bin}/ast-index version")
  end
end
