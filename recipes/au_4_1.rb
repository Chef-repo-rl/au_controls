#
# Cookbook:: au_controls
# Recipe:: au_4_1
#
# Copyright:: 2018, The Authors, All Rights Reserved.

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audisp/audisp-remote.conf"
  line "remote_server = 10.0.21.1"
end

