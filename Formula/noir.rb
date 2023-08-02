class Noir < Formula
  desc "Noir is an attack surface detector form source code."
  homepage "https://github.com/hahwul/noir"
  url "https://github.com/hahwul/noir/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e376c5f5ba24750600036bae6708f3689b0a50167fa86eb5042855dce5f81103"
  version "0.1.0"
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
