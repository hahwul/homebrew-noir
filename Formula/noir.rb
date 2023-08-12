class Noir < Formula
  desc "Noir is an attack surface detector form source code."
  homepage "https://github.com/hahwul/noir"
  url "https://github.com/hahwul/noir/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "4d7b91ee5c96d3c3487f0efa18b27e9c4cb9456baf8c6e1101531a7acf4d2625"
  version "0.2.4"
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
