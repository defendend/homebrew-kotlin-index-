class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.13.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.2/ast-index-v3.13.2-darwin-arm64.tar.gz"
      sha256 "71133c3ec16aaa438ff91ddb8083968d6fd39e08d1a7a2442583b46a2868ac22"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.2/ast-index-v3.13.2-darwin-x86_64.tar.gz"
      sha256 "3a30368f284dfc756e8f08091ee4f22aa7810240df5c000333d6ed35e1eca990"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.2/ast-index-v3.13.2-linux-x86_64.tar.gz"
    sha256 "0c69002760037ef62d8fb5733b1ce53a5a2bcb3992a557d94daa0569900fd73c"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.13.2", shell_output("#{bin}/ast-index version")
  end
end
