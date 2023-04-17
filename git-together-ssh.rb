class GitTogetherSsh < Formula
  VERSION = "0.1.0"

  desc "Better commit attribution while pairing, with SSH certs!"
  homepage "https://github.com/ananaso/git-together-ssh"
  version VERSION
  url "https://github.com/ananaso/git-together-ssh/releases/download/v#{VERSION}/git-together-ssh-v#{VERSION}-x86_64-apple-darwin.tar.gz"
  sha256 "6ecae234b61ab84523ca049850ad241f9ba4beb4500430102d51879f94c48942"
  license "MIT"

  depends_on "libssh2"
  depends_on "openssl@1.1"
  
  def install
    bin.install "git-together-ssh"
  end

  test do
    system "#{bin}/git-together-ssh"
  end
end
