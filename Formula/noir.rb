class Noir < Formula
  desc "Noir is an attack surface detector form source code."
  homepage "https://github.com/hahwul/noir"
  url "https://github.com/hahwul/noir/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "d623a91275c52b134543e4e74deffdd4a483829d4808b2f1403bd379a77bcbd2"
  version "0.4.0"
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
