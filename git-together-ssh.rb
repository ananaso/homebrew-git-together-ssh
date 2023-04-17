class GitTogetherSsh < Formula
  VERSION = "0.1.0"

  desc "Better commit attribution while pairing, with SSH certs!"
  homepage "https://github.com/ananaso/git-together-ssh"
  version VERSION
  url "https://github.com/ananaso/git-together-ssh/releases/download/v#{VERSION}/git-together-ssh-v#{VERSION}-x86_64-apple-darwin.tar.gz"
  sha256 "4d4bc2385f4e7f129a4ddd72bf3ea7fb11571e551c92efb7a7a53bbb2f84c4f7"
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
