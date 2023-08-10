class Noir < Formula
  desc "Noir is an attack surface detector form source code."
  homepage "https://github.com/hahwul/noir"
  url "https://github.com/hahwul/noir/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "40779e61ce3982408a42846749bb8edd53e6015f7e2647d57425367f2dfcd731"
  version "0.2.3"
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
