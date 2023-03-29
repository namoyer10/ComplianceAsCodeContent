# platform = Red Hat Enterprise Linux 7
# profiles = xccdf_org.ssgproject.content_profile_cis

sed -i 's/^\s*KexAlgorithms\s.*//i' /etc/ssh/sshd_config
echo "KexAlgorithms diffie-hellman-group1-sha1,diffie-hellman-group14-sha1,diffie-hellman-group-exchange-sha1,curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp521" >> /etc/ssh/sshd_config
