cask 'tunnelbear' do
  version '2.5.7'
  sha256 'a18c1dacb5773079a190e6e2bdf1f48d23f3248719f9cc33fcd565c022e5f1a1'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          :sha256 => '5543be3869a2858e02e5ece48c4481839f4b9dcac0b64e6ffc078c880cc3a952'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TunnelBear.app'

  postflight do
    suppress_move_to_applications
  end
end
