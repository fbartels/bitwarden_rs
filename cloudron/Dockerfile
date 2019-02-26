FROM cloudron/base:1.0.0@sha256:147a648a068a2e746644746bbfb42eb7a50d682437cead3c67c933c546357617

ENV ROCKET_ENV "staging"
ENV ROCKET_PORT=80
ENV ROCKET_WORKERS=10

RUN mkdir -p /app/data
VOLUME /app/data
EXPOSE 80
EXPOSE 3012

# Copies the files from the context (Rocket.toml file and web-vault)
# and the binary from the "build" stage to the current stage
COPY --from=mprasil/bitwarden:1.7.0 /web-vault /app/code/web-vault
COPY --from=mprasil/bitwarden:1.7.0 /bitwarden_rs /app/code/
COPY --from=mprasil/bitwarden:1.7.0 /Rocket.toml /app/code/

# Configures the startup!
CMD /app/code/bitwarden_rs

