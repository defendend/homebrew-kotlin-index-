class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java, iOS/Swift/ObjC, and Perl projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.6.1/ast-index-3.6.1-darwin-arm64.tar.gz"
  sha256 "feb99ff7dfc6d272522d5f30256a69d8d5d1dc6175e354268a12c2955b5b9631"
  license "MIT"
  version "3.6.1"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index-rs v3.6.1", shell_output("#{bin}/ast-index version")
  end
end
