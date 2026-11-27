# Generated with JReleaser 1.27.0 at 2026-11-27T12:56:14.539703-06:00

class Jstarter < Formula
  desc "Java and Jakarta EE project starter by Flow Logix"
  homepage "https://start.flowlogix.com/"
  version "0.5.6"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.6/jstarter-0.5.6-linux-aarch64.zip"
    sha256 "8b72fcbfa1956382b90286945313e253e4e8563668815abd583df1a13d2470a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.6/jstarter-0.5.6-linux-x86_64.zip"
    sha256 "f1fb7cd6f9ba6a309f0bf7eb26445008673b06fd3e3b88484ce3e1e5a167438d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.6/jstarter-0.5.6-osx-aarch64.zip"
    sha256 "5ebd6d4d5b1bb46606db3804f391376a2c7cd9e657e12aa2dab9af38b265d135"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jstarter" => "jstarter"
  end

  test do
    output = shell_output("#{bin}/jstarter --version")
    assert_match "0.5.6", output
  end
end
