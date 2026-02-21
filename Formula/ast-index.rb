class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.19.0/ast-index-v3.19.0-darwin-arm64.tar.gz"
      sha256 "c962984a2b909df62a36029f6743c86dd2a998964f6950c6eea233760c95b9ff"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.19.0/ast-index-v3.19.0-darwin-x86_64.tar.gz"
      sha256 "ee11f8f178d8bfd09a0cca4b34b927e8f4ee6408f8b8b838391e52a6a04d8f75"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.19.0/ast-index-v3.19.0-linux-x86_64.tar.gz"
    sha256 "883318e861359cc3d291983516c7eeb454c1a1a7380753e6238abe8300b0cbe3"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.19.0", shell_output("#{bin}/ast-index version")
  end
end
