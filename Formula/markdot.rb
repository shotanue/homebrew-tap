class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.11'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.11/markdot-darwin-arm64'
      sha256 'add5de588cf7016e6ef0eec2a1e1aa18933538f70157b22b21f284364034fcdd'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.11/markdot-darwin-amd64'
      sha256 'b702ff9e28e3a651dbd85cd9dbb0deb258d66b0c270d3d425022a1c5d3525bc7'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.11/markdot-linux-amd64'
      sha256 '435283b7df52dbeb440ce654e0a1ce08f39b454b92e579ddc195f88a36d1b546'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
