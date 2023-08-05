class Noir < Formula
  desc "Noir is an attack surface detector form source code."
  homepage "https://github.com/hahwul/noir"
  url "https://github.com/hahwul/noir/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "da6a505568478096386053b6235808d058445ea0711c945be6eafe4d70ccde40"
  version "0.2.0"
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
