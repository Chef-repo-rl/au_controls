#
# Cookbook:: au_controls
# Recipe:: au_5_b_1
#
# Copyright:: 2018, The Authors, All Rights Reserved.

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-f 2"
end

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-f 2"
end

# execute 'name' do
#   command 'service auditd restart'
#   # creates '/tmp/something'
#   action :run
# end
