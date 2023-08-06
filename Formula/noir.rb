class Noir < Formula
  desc "Noir is an attack surface detector form source code."
  homepage "https://github.com/hahwul/noir"
  url "https://github.com/hahwul/noir/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "fe88ee20d273dcd0d1a304acbe68ab640b232bdd4c5e322f9f8bd1a5ff95a92e"
  version "0.2.1"
  depends_on "crystal"

  def install
    system "shards install"
    system "shards build --release --no-debug"
    bin.install "bin/noir"
  end

  test do
    system "{bin}/noir", "-v"
  end
end
