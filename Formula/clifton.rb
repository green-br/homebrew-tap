# clifton.rb
class Clifton < Formula
  desc "SSH connection manager"
  homepage "https://github.com/isambard-sc/clifton"
  head "https://github.com/isambard-sc/clifton.git", branch: "master"
  url "https://github.com/isambard-sc/clifton.git",
      tag: "0.2.0",
      revision: "3126052d46c659e44ca5a0b95314946fbaa1bb3c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^clifton /, shell_output("#{bin}/clifton --version"))
  end
end
