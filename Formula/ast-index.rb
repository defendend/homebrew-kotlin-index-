class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java, iOS/Swift/ObjC, Perl, Python, Go, Proto, WSDL, and C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.8.5/ast-index-3.8.5-darwin-arm64.tar.gz"
  sha256 "4147af672eae1b40c19468abb9cd58336529c2451fe055011faf26811ad4fce0"
  license "MIT"
  version "3.8.5"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.8.5", shell_output("#{bin}/ast-index version")
  end
end
