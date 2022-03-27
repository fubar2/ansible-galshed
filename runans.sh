ansible-galaxy install -p roles -r requirements.yml
# make an unencrypted secret - will be encrypted before save
printf "vault_id_secret: " > group_vars/secret.yml
openssl rand -base64 24 > .vault-password.txt
openssl rand -base64 24 > .vault-id-secret.txt
echo ./.vault-id-secret.txt >> group_vars/secret.yml
ansible-vault encrypt --encrypt-vault-id default --vault-password-file .vault-password.txt group_vars/secret.yml
ansible-playbook  galaxy.yml --vault-password-file ./.vault-password.txt
