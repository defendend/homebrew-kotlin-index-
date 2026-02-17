class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.1/ast-index-v3.17.1-darwin-arm64.tar.gz"
      sha256 "bca9d5583eb775f160f921c51d86a451d486f082e587ab460b176408164cf715"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.1/ast-index-v3.17.1-darwin-x86_64.tar.gz"
      sha256 "250f6f6cc2fe540d38051e4e344cff6fa03eeec801763f13f2bd6afb6cfd223c"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.1/ast-index-v3.17.1-linux-x86_64.tar.gz"
    sha256 "1a0520e2f05d419cea96868d5e93de67b3e47b61f535e71f2b022f2fa928cc8b"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.17.1", shell_output("#{bin}/ast-index version")
  end
end
