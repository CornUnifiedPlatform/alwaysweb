NETWORK_PATH1='admin'
NETWORK_PATH2='index'
Advanced_Settings=$(cat <<-EOF
ProxyRequests off
ProxyPass "${NETWORK_PATH1}" "ws://services-${USER}.alwaysdata.net:8300${NETWORK_PATH1}"
ProxyPassReverse "${NETWORK_PATH1}" "ws://services-${USER}.alwaysdata.net:8300${NETWORK_PATH1}"
ProxyPass "${NETWORK_PATH2}" "ws://services-${USER}.alwaysdata.net:8400${NETWORK_PATH2}"
ProxyPassReverse "${NETWORK_PATH2}" "ws://services-${USER}.alwaysdata.net:8400${NETWORK_PATH2}"
ProxyPreserveHost On
EOF
)
echo -e "\e[32m$Advanced_Settings\e[0m"
