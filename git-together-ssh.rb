class GitTogetherSsh < Formula
  VERSION = "0.1.0"

  desc "Better commit attribution while pairing, with SSH certs!"
  homepage "https://github.com/ananaso/git-together-ssh"
  url "https://github.com/ananaso/git-together-ssh/releases/download/v#{VERSION}/git-together-ssh-v#{VERSION}-x86_64-apple-darwin.tar.gz"
  sha256 "33901f1dfbb6aa4c04d18983f621f1daf42e3431a83af6dd8aa2a835cd89e03f"
  license "MIT"

  depends_on "libssh2"
  depends_on "openssl@1.1"
  
  def install
    bin.install "git-together"
  end

  test do
    system "#{bin}/git-together-ssh"
  end
end
