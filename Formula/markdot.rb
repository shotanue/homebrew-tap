class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.12'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.12/markdot-darwin-arm64'
      sha256 '69cd6eb9a3bfb3f43f4fef6575578400ddefd84874a66c59239f54333564e210'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.12/markdot-linux-amd64'
      sha256 '6c469ffcc2363e2640c7a93c838aaf635e27e50685ffb2c0eb72da61cfbe4c40'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
