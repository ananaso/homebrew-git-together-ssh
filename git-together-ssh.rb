class GitTogetherSsh < Formula
  VERSION = "0.1.1"

  desc "Better commit attribution while pairing, with SSH certs!"
  homepage "https://github.com/ananaso/git-together-ssh"
  version VERSION
  url "https://github.com/ananaso/git-together-ssh/releases/download/v#{VERSION}/git-together-ssh-v#{VERSION}-x86_64-apple-darwin.tar.gz"
  sha256 "b63e8e6ab4f3d193cab49ea7ed86b9daf5ab81086588fd74583c7684669dd23b"
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
