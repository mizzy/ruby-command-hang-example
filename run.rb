#!/usr/bin/env ruby

require 'open3'

cmd = %q{DEBIAN_FRONTEND='noninteractive' apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' install mysql-community-server}

# This hangs up
Open3.popen3(cmd) do |i, o, e, w|
  i.close_write
  o.each {|line| puts line }
  e.each {|line| puts line }
end


# Open3.capture3 also hangs up
#
# Open3.capture3(cmd)
