class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.0/ast-index-3.10.0-darwin-arm64.tar.gz"
  sha256 "499f3439ce20f00eace09a265478e0bd5859bc273a41ad0addc48ae0a0c870b4"
  license "MIT"
  version "3.10.0"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.10.0", shell_output("#{bin}/ast-index version")
  end
end
