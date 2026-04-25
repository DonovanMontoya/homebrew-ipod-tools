class Cdrip < Formula
  desc "CLI to read/convert AIFF files to FLAC"
  homepage "https://github.com/DonovanMontoya/CD-Rip"
  url "https://github.com/DonovanMontoya/cdrip/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d2f9000536d3c11ddbb4c0c5dedc307aaeb788de725f5f4ee3bb9835b7d3113a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cdrip", "--help"
  end
end
