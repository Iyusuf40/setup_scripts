Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "forwarded_port", guest: 80, host: 8081
  config.vm.network "forwarded_port", guest: 3000, host: 3002
  config.vm.network "forwarded_port", guest: 3001, host: 3003
  config.vm.network "forwarded_port", guest: 5000, host: 5002
  config.vm.network "forwarded_port", guest: 5001, host: 5003
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
end
