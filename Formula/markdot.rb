class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.13'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.13/markdot-darwin-arm64'
      sha256 '40a04a2160496675555ccac291d213739823d536617777ddf9631f3069f9dd8c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.13/markdot-darwin-amd64'
      sha256 '8b8d1d4f7a8cf1fdccb0acb474975c28b70071cba9e3d2cdcc1cf8acb369e053'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.13/markdot-linux-amd64'
      sha256 'abefe4299f496ba2511500ee718c7924d5efd2d37de464a640a1a546940fc907'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
