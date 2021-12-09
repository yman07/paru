FROM lopsided/archlinux:devel

WORKDIR /app

COPY ../ .

RUN pacman -S --noconfirm rustup
RUN rustup default 1.56.1
RUN ./scripts/dist

