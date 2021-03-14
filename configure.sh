# The following steps assumes that you have named the 
# generated key 'codecommit_rsa'. If you have named
# the file differently, please replace 'codecommit_rsa'
# with the name used during key generation.

cd $HOME/.ssh
touch config
chmod 600 config
cat > $HOME/.ssh/config << "EOF"
Host git-codecommit.*.amazonaws.com
    User YOUR_SSH_KEY_ID_FROM_AWS_IAM
    IdentityFile ~/.ssh/codecommit_rsa
EOF