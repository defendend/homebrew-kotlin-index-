class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java and iOS/Swift/ObjC projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.5.0/ast-index-3.5.0-darwin-arm64.tar.gz"
  sha256 "d6c387707f7908875b8e3e9b1dc34857004e0defd1d42469833cc103ba3ec7c0"
  license "MIT"
  version "3.5.0"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index 3.5.0", shell_output("#{bin}/ast-index version")
  end
end
