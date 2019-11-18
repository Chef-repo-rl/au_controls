#
# Cookbook:: au_controls
# Recipe:: au_12_c_10
#
# Copyright:: 2018, The Authors, All Rights Reserved.

['audit', 'audit-libs'].each |pkg| do
package pkg do
  action :install
end
end



directory '/etc/audit/rules.d' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

append_if_no_line "make sure a line is in audit.rules file " do
  path "/etc/audit/rules.d/audit.rules"
  line "-w /sbin/modprobe -p x -F auid!=4294967295 -k module-change"
end

# service 'auditd' do
#   supports status: true, restart: true, reload: true
#   action :restart
# end
