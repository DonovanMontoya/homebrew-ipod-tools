class Cdrip < Formula
  desc "CLI to read/convert AIFF files to FLAC"
  homepage "https://github.com/DonovanMontoya/CD-Rip"
  url "https://github.com/DonovanMontoya/CD-Rip/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "f10f511ccc34eb16d055300959fd2274b6e61944fe34f05efe74b284e9562b35"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cdrip", "--help"
  end
end
