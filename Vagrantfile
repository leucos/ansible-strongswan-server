Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.define "strongswan-role" do |ipsec|
  end
  config.vm.provision "shell",
    :path => "tests/specs.sh",
    :upload_path => "/home/vagrant/specs",
    # change role name below
    :args => "--install ansible-strongswan"
end

