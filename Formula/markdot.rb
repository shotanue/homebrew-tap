class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.4'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.4/markdot-darwin-arm64'
      sha256 'cc807105680afbe8695d2eacd93025b8d66697b3629a137fdc5c3a1db0c11980'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.4/markdot-darwin-amd64'
      sha256 'c7eadad18c41e1cd61e420243c68385e66987e0ba97919bb6c79721256449ace'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.4/markdot-linux-amd64'
      sha256 '3a6b23ea6c05d69dc99a99802d61eac7b91e6fc56dbdc35f54bfac573b12e8a5'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
