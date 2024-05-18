
```bash
ANSIBLE_BECOME_PASSWORD="pass" ansible-playbook -i ansible/inventory.yml ansible/setup.yml
``

```bash
ansible-playbook -i ansible/inventory.yml ansible/setup.yml --ask-become-pass
```
