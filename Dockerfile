# Use a minimal Alpine image as the base
FROM alpine:latest

LABEL org.opencontainers.image.description="A Docker container for running QDevice (QNetd) to provide quorum in a Proxmox cluster."
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="https://github.com/MiguelTVMS/qdevice-container"
LABEL org.opencontainers.image.title="Qdevice Docker Image"
LABEL org.opencontainers.image.url="https://github.com/MiguelTVMS/qdevice-container"
LABEL org.opencontainers.image.authors="João Miguel Marques Silva <qdevice-container@miguel.ms>"

# Install necessary packages
RUN apk add --no-cache corosync-qnetd

# Expose the QNetd port (default is 5403)
EXPOSE 5403

# Set the entrypoint to start the QNetd service
ENTRYPOINT ["corosync-qnetd", "-f"]
