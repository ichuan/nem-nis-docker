FROM openjdk:8-jre

RUN wget https://bob.nem.ninja/nis-0.6.96.tgz -O - | tar -C /opt -xzf -
RUN sed -i -e 's/^nem.host =.*/nem.host = 0.0.0.0/g' -e 's/^nem.folder =.*/nem.folder = \/opt\/nem/g' -e 's/^nis.additionalLocalIps.*/nis.additionalLocalIps = *.*.*.*/g' /opt/package/nis/config.properties

VOLUME /opt/nem

WORKDIR /opt/package/nis
# /opt/package/nix.runNis.sh
ENTRYPOINT ["java", "-Xms1G", "-Xmx2G", "-cp", ".:./*:../libs/*", "org.nem.deploy.CommonStarter"]
