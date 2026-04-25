class Cdrip < Formula
  desc "CLI to read/convert AIFF files to FLAC"
  homepage "https://github.com/DonovanMontoya/CD-Rip"
  url "https://github.com/DonovanMontoya/cdrip/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fecb3e5b43fc01ea996cd84a75c8f39d038d0def461d7a53ee10c90f279af46e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cdrip", "--help"
  end
end
