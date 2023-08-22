class GitTogether < Formula
  VERSION = "0.1.2"

  desc "Better commit attribution while pairing!"
  homepage "https://github.com/ananaso/git-together-ssh"
  version VERSION
  url "https://github.com/ananaso/git-together-ssh/releases/download/v#{VERSION}/git-together-v#{VERSION}-x86_64-apple-darwin.tar.gz"
  sha256 "c620049e1f2ef611f47a53dc3ed204dcb79a0fabf1b5d4d9c628ebaa4706a8a1"
  license "MIT"

  depends_on "libssh2"
  depends_on "openssl@1.1"
  
  def install
    bin.install "git-together"
  end

  test do
    system "#{bin}/git-together"
  end
end
