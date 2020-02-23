class Atcoder < Formula
  desc "Unofficial CLI for AtCoder users"
  homepage "https://github.com/sachaos/atcoder"

  url "https://github.com/sachaos/atcoder/archive/v0.2.6.tar.gz"
  sha256 "c99724798a4dacfe26e907250c1f25d2be111968ec3e86fb0c5cf7b8337f47e1"
  head "https://github.com/sachaos/atcoder.git"

  depends_on "go" => :build

  def install
    (buildpath/"src/github.com/sachaos/atcoder").install buildpath.children
    cd "src/github.com/sachaos/atcoder" do
      system "go", "build", "-o", bin/"atcoder"
    end
  end
end
