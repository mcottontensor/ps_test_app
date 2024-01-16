FROM adamrehn/ue4-runtime:22.04-cudagl12

ARG sourcedir

COPY --chown=ue4:ue4 entrypoint.sh /usr/bin/entrypoint.sh
COPY --chown=ue4:ue4 $sourcedir /opt/ue5/testing

RUN chmod +x /usr/bin/entrypoint.sh
RUN chmod +x /opt/ue5/testing/PSTestStreamer.sh

# Set the script as the container's entrypoint
ENTRYPOINT ["/usr/bin/entrypoint.sh", "/opt/ue5/testing/PSTestStreamer.sh", "-PixelStreamingUseMediaCapture"]
