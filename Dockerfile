FROM bioboxes/biobox-minimal-base@sha256:cabe7f363241b9a87221639cca9f5a609d5cdf1487c01c0ad75b1a202bf926a6

ADD image/bin    /usr/local/bin
ADD image/share  /usr/local/share

RUN install.sh && rm /usr/local/bin/install.sh

ENV TASKFILE     /usr/local/share/Taskfile
ENV SCHEMA       /usr/local/share/assembler_schema.yaml
ENV BIOBOX_EXEC  assemble.sh
