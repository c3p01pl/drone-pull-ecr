FROM docker:19.03.4

RUN apk --update add \
    python \
    curl \
    groff; \
    set -ex; \
    wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py' \
    && python get-pip.py --disable-pip-version-check --no-cache-dir \
    && pip install awscli
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

