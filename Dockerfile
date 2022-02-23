FROM aviggiano/redis-roaring@sha256:0c4e97accbf6821b828b46aef0b77572b6d3866b6fb3b17e9f0ffd527f8cbeb3

COPY --from=zappi/redis:6.2.6 /opt/redis/scripts/ /opt/redis/scripts/
