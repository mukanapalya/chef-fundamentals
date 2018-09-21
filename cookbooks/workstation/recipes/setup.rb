# setup file for utilities before stashing
package 'git'
package 'vim-enhanced'

# ~/setup.rb

package 'tree' do
  action :install
end

package 'nano' do
  action :install
end

package 'ntp'

node['ipaddress']
node['memory']['total']

apple_count = 4
puts "I have #{apple_count} apples"

user 'user1' do
  comment 'user1'
  uid '123'
  home '/home/user1'
  shell '/bin/bash'
end

group 'admins' do
  members 'user1'
end

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'DRYiCE')
  action :create
end
