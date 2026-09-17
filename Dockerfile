FROM alpine:latest

# Install bash since entrypoint.sh uses /bin/bash
RUN apk add --no-cache bash

WORKDIR /app

# Copy entrypoint script and make it executable
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
