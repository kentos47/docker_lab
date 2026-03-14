FROM alpine:latest

RUN \
apk update && \
apk upgrade && \
apk add --no-cache g++

WORKDIR /game

COPY . .

RUN g++ -std=c++17 -O2 -o SkyrimTBRPG "Final Project"/*.cpp

CMD ["./SkyrimTBRPG"]
