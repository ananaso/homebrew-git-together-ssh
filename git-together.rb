class GitTogether < Formula
  VERSION = "0.1.2"

  desc "Better commit attribution while pairing!"
  homepage "https://github.com/ananaso/git-together-ssh"
  version VERSION
  url "https://github.com/ananaso/git-together-ssh/releases/download/v#{VERSION}/git-together-v#{VERSION}-x86_64-apple-darwin.tar.gz"
  sha256 "49ff331e39ef3b5e8456aed1462bd52c4b9d4a23b9427d9c1cd0c19af64ace6b"
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
