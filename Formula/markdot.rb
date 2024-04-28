class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.9'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.9/markdot-darwin-arm64'
      sha256 'a402055be5e9267451c1b3150355a11875dac53814d4b1f85ed9451dfb938384'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.9/markdot-darwin-amd64'
      sha256 'b6ffd6e926d8bd974bd1e6cc6bafa28c4757ee6dc7f82ff1de3d7391f519043c'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.9/markdot-linux-amd64'
      sha256 '47c0a5c3c1a2f67ad234aa7d87e381c35a690e55055511b3bf11fd2a2a73420d'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
