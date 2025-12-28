FROM rust:1.92-bookworm AS builder

WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends git ca-certificates build-essential pkg-config && \
    rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 --branch correct_urls_for_hosting https://github.com/shift-L/hashcards /app/source

WORKDIR /app/source

RUN cargo build --release

RUN rm -rf /app/source/.git

FROM debian:bookworm-slim as runner

RUN adduser --system --no-create-home appuser

COPY --from=builder /app/source/target/release/hashcards /usr/local/bin/hashcards

RUN chown appuser:root /usr/local/bin/hashcards