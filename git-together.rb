class GitTogether < Formula
  VERSION = "0.1.2"

  desc "Better commit attribution while pairing!"
  homepage "https://github.com/ananaso/git-together-ssh"
  version VERSION
  url "https://github.com/ananaso/git-together-ssh/releases/download/v#{VERSION}/git-together-v#{VERSION}-x86_64-apple-darwin.tar.gz"
  sha256 "c6ce00f253b274f60e7b6fdc31dfc13ec18bd8695e6e5a6872a7f792b783e368"
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
