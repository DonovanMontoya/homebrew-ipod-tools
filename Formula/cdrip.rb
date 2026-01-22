class Cdrip < Formula
  desc "CLI to read/convert AIFF files to FLAC"
  homepage "https://github.com/DonovanMontoya/CD-Rip"
  url "https://github.com/DonovanMontoya/CD-Rip/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "940b3e0f3f961f173729955fb7ba9465e1b63206c40692fec10161edd5b05f20"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cdrip", "--help"
  end
end
