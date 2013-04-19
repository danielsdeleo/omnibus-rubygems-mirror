
name "rubygems-mirror"

replaces        "rubygems-mirror"
install_path    "/opt/rubygems-mirror"
build_version   Omnibus::BuildVersion.new.semver
build_iteration "1"

dependencies([])

# global
dependencies << "preparation" # creates required build directories

# rubygems-mirror deps
dependencies << "nginx"
dependencies << "gem-mirror-tools"

# version manifest file
dependencies << "version-manifest"


exclude "\.git*"
exclude "bundler\/git"
