# ansible-doc-gen-docker

https://docs.ansible.com/ansible/2.9/dev_guide/testing_documentation.html#testing-module-documentation

### Generate docs for ansible modules

```
git clone https://github.com/ansible/ansible.git
cd ansible/
git checkout stable-2.9
cp /path/to/module lib/ansible/modules/$CATEGORY/${YOUR_MODULE_NAME}.py
docker run -ti --rm -v $(pwd):/opt/ansible zhxu73/ansible-doc-gen:latest bash
```

inside the container
```
cd /opt/ansible
MODULES=$YOUR_MODULE_NAME make webdocs
```

