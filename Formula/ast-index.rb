class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.15.0/ast-index-v3.15.0-darwin-arm64.tar.gz"
      sha256 "9b7c7a425fbe146942dee7342a337214828affee1aad2bd28a74d8a606ecb9bb"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.15.0/ast-index-v3.15.0-darwin-x86_64.tar.gz"
      sha256 "095758b43c2008c901f4cec07ac574d867b9c2ed30a6c8e7f259ad6b10c292e9"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.15.0/ast-index-v3.15.0-linux-x86_64.tar.gz"
    sha256 "5149c12c2bdfc971a4d4c9a3d6903d45c912a8fff356ca6bd802a70da4c8e8d5"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.15.0", shell_output("#{bin}/ast-index version")
  end
end
