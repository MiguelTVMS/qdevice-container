# Use a minimal Debian image as the base
FROM debian:bullseye-slim

# Install necessary packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends corosync-qnetd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose the QNetd port (default is 5403)
EXPOSE 5403

# Set the entrypoint to start the QNetd service
ENTRYPOINT ["corosync-qnetd", "-f"]
