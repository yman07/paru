FROM lopsided/archlinux:devel

WORKDIR /app

COPY ../ .

RUN pacman -Sy --noconfirm rustup
RUN rustup default 1.56.1
RUN ./scripts/dist

