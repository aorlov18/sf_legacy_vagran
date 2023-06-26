Vagrant.configure("2") do |config|
  config.vm.define "sf_legacy_vagrant"
  config.vm.box = "bento/ubuntu-18.04"
  #config.vm.box_url = 'file:/home/alex/project/sf_legacy_vagrant/package.box'
  config.vm.provider :virtualbox do |virtualbox|
    virtualbox.customize ["modifyvm", :id, "--memory", "1024"]
    virtualbox.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end
  config.vm.provision "shell", path: "provision.sh"
end