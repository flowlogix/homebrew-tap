# Generated with JReleaser 1.27.0 at 2026-11-27T02:50:01.62386-06:00

class Jstarter < Formula
  desc "Java and Jakarta EE project starter by Flow Logix"
  homepage "https://start.flowlogix.com/"
  version "0.5.5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.5/jstarter-0.5.5-linux-aarch64.zip"
    sha256 "02c16551e9f1ebc2e32b0100514aef0157c3a1e8bae1523444dd25c1032e9785"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.5/jstarter-0.5.5-linux-x86_64.zip"
    sha256 "2181ca04fd2d5e63c3c2bf68ab7e06a6e045c6dcf71f6aa59a75e57879953334"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.5/jstarter-0.5.5-osx-aarch64.zip"
    sha256 "76abe1bd45303d754afb039b50064dc7c72f3df880e25b8cd906d611f474cbff"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jstarter" => "jstarter"
  end

  test do
    output = shell_output("#{bin}/jstarter --version")
    assert_match "0.5.5", output
  end
end
