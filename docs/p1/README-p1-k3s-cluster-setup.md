
---

## 🧩 Features

- 📦 VMs use Ubuntu 20.04 (`bento/ubuntu-20.04`)
- 🧠 Master node: `gehovhanS` (`192.168.56.110`)
- 🛠 Worker node: `gehovhanSW` (`192.168.56.111`)
- 🔁 Shared folder `.shared/` used to pass K3s token from master to worker
- ⚙️ Shell scripts provision:
    - `net-tools`, `curl`
    - Update `/etc/hosts` for internal hostname resolution
    - Install and configure K3s server and agent

---

## 🚀 Getting Started

### Requirements

- [ Vagrant VMware Utility ](https://developer.hashicorp.com/vagrant/docs/providers/vmware/vagrant-vmware-utility)
- [ VMware Workstation Pro ](https://www.vmware.com/products/desktop-hypervisor/workstation-and-fusion)
- [ Vagrant ](https://developer.hashicorp.com/vagrant/install)
- [VMware Desktop Provider](https://developer.hashicorp.com/vagrant/docs/providers/vmware)

#### VMware plugin installed:
  ```bash
  vagrant plugin install vagrant-vmware-desktop
  ```