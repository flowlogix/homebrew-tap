# Generated with JReleaser 1.27.0 at 2026-11-27T16:45:53.473445-06:00

class Jstarter < Formula
  desc "Java and Jakarta EE project starter by Flow Logix"
  homepage "https://start.flowlogix.com/"
  version "0.5.7"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.7/jstarter-0.5.7-linux-aarch64.zip"
    sha256 "186deae060dae56f60cc61424b1c608e868fdb06075d3dd8d9d4a420aa76b750"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.7/jstarter-0.5.7-linux-x86_64.zip"
    sha256 "c45eb32fc508ffb2d4d8f2b1ca55a6fb9af1d57169d5df73a7b3c7d197a350e5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.7/jstarter-0.5.7-osx-aarch64.zip"
    sha256 "0386c56bbb5fa4a3fdcf8a5706d7ffd55cb8b00f45dd1b4ebe900e3ce88e8d09"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jstarter" => "jstarter"
  end

  test do
    output = shell_output("#{bin}/jstarter --version")
    assert_match "0.5.7", output
  end
end
