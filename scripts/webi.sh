echo "Installing Webi..."
curl -sS https://webi.sh/webi | sh
webi $(< ./scripts/webi_packages.list) 
