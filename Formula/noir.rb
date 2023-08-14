class Noir < Formula
  desc "Noir is an attack surface detector form source code."
  homepage "https://github.com/hahwul/noir"
  url "https://github.com/hahwul/noir/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d010a3f9b10f6de72b76a85d79b0d442615f3e28f614c2cf8130bab57ec3cd22"
  version "0.3.0"
  depends_on "crystal"

  def install
    system "shards install"
    system "shards build --release --no-debug --production"
    bin.install "bin/noir"
  end

  test do
    system "{bin}/noir", "-v"
  end
end
