FROM hotio/dotnetcore

ARG DEBIAN_FRONTEND="noninteractive"
ARG ARCH_OMBI

ENV ARCH_OMBI="${ARCH_OMBI}" HOME="${CONFIG_DIR}"
EXPOSE 5000
HEALTHCHECK --interval=60s CMD curl -fsSL http://localhost:5000 || exit 1

# install app
# https://github.com/tidusjar/Ombi/releases
RUN curl -fsSL "https://github.com/tidusjar/Ombi/releases/download/v3.0.4680/${ARCH_OMBI}.tar.gz" | tar xzf - -C "${APP_DIR}" && \
    chmod -R u=rwX,go=rX "${APP_DIR}"

COPY root/ /

ARG COMMIT
ARG TAG
ARG APP

ENV COMMIT="${COMMIT}" TAG="${TAG}" APP="${APP}"
