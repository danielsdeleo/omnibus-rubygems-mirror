
name "gem-mirror-tools"

version "master"

dependencies(%w[ ruby rubygems bundler ])

relative_path "gem-mirror-tools"

source :git => "git://github.com/danielsdeleo/gem-mirror-tools"

build do
  bundle "install --path=/opt/rubygems-mirror/embedded/service/gem"
end
