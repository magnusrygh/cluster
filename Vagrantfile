
Vagrant.configure(2) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.define "web" do |web|
    web.vm.network "forwarded_port", guest: 80, host: 8087
    web.vm.provision "ansible", playbook: "ansible/web_playbook.yml"
    web.vm.provision "shell", path: "provisioning/provision.sh"
    web.vm.network "private_network", ip: "192.168.33.20"
    web.vm.post_up_message = "Apache is available at http://127.0.0.1:8087 reading from ./work"
  end

  config.vm.define "db" do |db|
    db.vm.provision "ansible", playbook: "ansible/db_playbook.yml"
    db.vm.provision "shell", path: "provisioning/db_provision.sh"
    db.vm.network "private_network", ip: "192.168.33.21"
  end

end
