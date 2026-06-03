FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    nginx \
    keepalived \
    iputils-ping \
    net-tools \
    iproute2 \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN echo '#!/bin/bash\n\
\n\
# Start services\n\
service nginx start\n\
service keepalived start\n\
\n\
echo "=== Machine 2 Started ==="\n\
echo "Role: ${ROLE}"\n\
echo "Priority: ${PRIORITY}"\n\
echo "Virtual IP: ${VIRTUAL_IP}"\n\
echo "========================="\n\
\n\
# Keep container running\n\
tail -f /dev/null\n\
' > /entrypoint.sh && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]