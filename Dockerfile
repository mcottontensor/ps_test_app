FROM adamrehn/ue4-runtime:22.04-cudagl12

ARG sourcedir

COPY --chown=ue4:ue4 $sourcedir /opt/ue5/testing
RUN chmod +x /opt/ue5/testing/TestApp.sh
ENTRYPOINT ["/opt/ue5/testing/TestApp.sh", "-renderoffscreen", "-pixelstreamingurl=ws://localhost:8888"]
