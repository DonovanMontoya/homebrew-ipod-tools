class Cdrip < Formula
  desc "CLI to read/convert AIFF files to FLAC"
  homepage "https://github.com/DonovanMontoya/CD-Rip"
  url "https://github.com/DonovanMontoya/cdrip/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "052186b1a0289005d3f019a64c15d5569fac7fd7794a5d692543f706065081c0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cdrip", "--help"
  end
end
