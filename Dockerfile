# Stage 1: Preprocessing .md to .tex
FROM ghcr.io/reproduce-work/tex-prepare:latest AS prepare
RUN python /run.py

# Stage 2: Converting .tex to .pdf
FROM ghcr.io/reproduce-work/tex-compile AS compile