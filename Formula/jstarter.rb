# Generated with JReleaser 1.27.0 at 2026-11-27T01:37:34.416721-06:00

class Jstarter < Formula
  desc "Java and Jakarta EE project starter by Flow Logix"
  homepage "https://start.flowlogix.com/"
  version "0.5.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.4/jstarter-0.5.4-linux-aarch64.zip"
    sha256 "2e39c57ff0d40d9f4870cf53674c5968e4ee13e220034666468d05a972614023"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.4/jstarter-0.5.4-linux-x86_64.zip"
    sha256 "2dcff3c4475c9ec4e8f3b27b21a356dd8e2d407fd48823206076eed6da25b705"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.4/jstarter-0.5.4-osx-aarch64.zip"
    sha256 "c60e9def3efbe8b7e616c5864620c5aa263ac215406ba91e93deb35ea1a7d15c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jstarter" => "jstarter"
  end

  test do
    output = shell_output("#{bin}/jstarter --version")
    assert_match "0.5.4", output
  end
end
