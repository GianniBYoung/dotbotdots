[Ansible-cert-prep](Ansible-cert-prep)
### Inventories
* can be yaml or ini
  * yaml has more features 
  * ini is simpler for statics
* can be static or dynamic
* variable definitions should not be definied in inventory files  
  * store in yaml files in group_vars or host_vars directory
* for dynamic inventories you can pass in the program with the
  -i flag to generate it each time.
* Multiple inventories can be used
  * they will just have to be contained in the same directory

### Modules
* `lineinfile` is a cool one
* `command` runs command without and environment while `shell` does

### Playbooks
where -> means new indent
* basic syntax --- -> -hosts: remote_user: tasks: -> -name:-> module:
* If a playbook fails a file called `<playbook>.retry` is generated with only the failed hosts
* `limit` can be used to constrain to one or a few servers and then removed to run against the whole group
* use `ansible-playbook`
* register in the playbook can be used to store variables
  
### Misc
* AWS EC2 and some other stuff provides scripts to create dynamic inventories
  * Don't reinvent the vvheel!
