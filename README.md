Strongswan server Ansible playbook
==================================

[![Travis
CI](http://img.shields.io/travis/leucos/ansible-strongswan-server.svg?style=flat)](http://travis-ci.org/leucos/ansible-strongswan-server)
[![Ansible
Galaxy](http://img.shields.io/badge/galaxy-leucos.strongswan--server-660198.svg?style=flat)](https://galaxy.ansible.com/list#/roles/3735)

This playbook will install a [StrongSwan](https://www.strongswan.org/)
server. No client config will be taken care of here. See
[ansible-strongswan-add-client](https://github.com/leucos/ansible-strongswan-add-client) for this.

Requirements
------------

None

Role Variables
--------------



Tags
----

  - `stongswan`: whole role
  - `apt`: install part
  - `config`: config part

Dependencies
------------

None

Example Playbook
----------------

    - hosts: vpnserver
        roles:
            - strongswan-server


Specs
-----

This role comes with specs !
Start the VM using:

    vagrant up

Then run specs with:

    vagrant ssh -c specs

To run in _fast mode_ (i.e. without re-installing ansible everytime):
`vagrant ssh -c 'specs -p'

Now, to run tests continuously while hacking on role, a Guardfile is
provided. Just run `guard`.

License
-------

MIT

Author Information
------------------

Created by [@leucos](https://github.com/leucos).

