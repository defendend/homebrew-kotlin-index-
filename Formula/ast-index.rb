class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.1/ast-index-v3.10.1-darwin-arm64.tar.gz"
      sha256 "457425b68ea02a121e0fed65b6b10ff81697aa480a77c77219d15dee8fe90de2"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.1/ast-index-v3.10.1-darwin-x86_64.tar.gz"
      sha256 "3dc5be54273d7b08b7a623c98eee7b006fd8deb99b27ef33e548058fc4a9738f"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.1/ast-index-v3.10.1-linux-x86_64.tar.gz"
    sha256 "7d34cc4a26b70c0849b98f383bba9352a0ed1902961d87fd2de2574fe89c58c0"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.10.1", shell_output("#{bin}/ast-index version")
  end
end
