
#!/bin/bash

# Check if httpd service is running
if systemctl is-active --quiet httpd; then
  echo "HTTPD service is running."
else
  echo "HTTPD service is not running. Starting..."
  systemctl start httpd
  if [ $? -eq 0 ]; then
    echo "HTTPD service started successfully."
  else
    echo "Failed to start HTTPD service."
  fi
fi
