class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java, iOS/Swift/ObjC, and Perl projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.6.0/ast-index-3.6.0-darwin-arm64.tar.gz"
  sha256 "939600b07d7958f6e42d7b236d103600374f5f5e8c6963446e1b677d826208cc"
  license "MIT"
  version "3.6.0"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index 3.6.0", shell_output("#{bin}/ast-index version")
  end
end
