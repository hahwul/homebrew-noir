class Noir < Formula
  desc "Noir is an attack surface detector form source code."
  homepage "https://github.com/hahwul/noir"
  url "https://github.com/hahwul/noir/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "263361098df7dbd5aae74c303636f225c086313d37d1ac1f2cd14248f9b15c60"
  version "0.2.2"
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
