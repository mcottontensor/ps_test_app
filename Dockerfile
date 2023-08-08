FROM adamrehn/ue4-runtime:20.04-cudagl11

COPY --chown=ue4:ue4 packed/Linux /opt/ue5/testing
RUN chmod +x /opt/ue5/testing/TestApp.sh
ENTRYPOINT ["/opt/ue5/testing/TestApp.sh", "-renderoffscreen", "-pixelstreamingurl=ws://localhost:8888"]
