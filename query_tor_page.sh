#!/bin/bash

# Check if Tor is running
tor_running=$(pgrep -x tor)

if [ -z "$tor_running" ]; then
    echo "Tor is not running. Please start Tor and try again."
    exit 1
fi

# Replace with your Tor hidden service URL
hidden_service="http://v3pastedc5jeqahtq77gvu3vz222bcqhlfubfunzjzqedg6jdqqlvgqd.onion/view.php?paste=0Sfwm1bISRvI"

# Query the Tor hidden service using curl
curl --socks5-hostname localhost:9050 $hidden_service
