class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.2'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.2/markdot-darwin-arm64'
      sha256 '501854c92686ede307f8955e830ef4f64800e867e12f179e0bead5e27ef569af'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.2/markdot-linux-amd64'
      sha256 '4e5b6f06705d07e379cbce8607ab960692a9fd4833af179fd3fe17ee9aeacf9c'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
