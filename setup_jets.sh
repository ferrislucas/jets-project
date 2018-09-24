#!/bin/bash

git clone https://github.com/tongueroo/jets
cd /root/jets
git checkout dir-glob
bundle
cat > /usr/local/bin/jets << EOF
#!/bin/bash

exec /root/jets/exe/jets "$@"
EOF
chmod a+x /usr/local/bin/jets
