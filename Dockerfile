FROM openjdk:17
VOLUME /tmp
ARG DEPENDECY=target/dependency
COPY ${DEPENDECY}/BOOT-INF/lib /app/lib
COPY ${DEPENDECY}/META-INF /app/META-INF
COPY ${DEPENDECY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.project.webapp.estimatemanager.EstimateManagerApplication"]