class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java, iOS/Swift/ObjC, Perl, Python, Go, Proto, WSDL, and C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.8.2/ast-index-3.8.2-darwin-arm64.tar.gz"
  sha256 "93c4d453fae411dca103c5af0b53fd344a0667119b40681b1d4dc78190ea4adb"
  license "MIT"
  version "3.8.2"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.8.2", shell_output("#{bin}/ast-index version")
  end
end
