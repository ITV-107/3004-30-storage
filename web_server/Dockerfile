# We're serving dynamic web content, so use PHP FPM as a backend 
FROM php:fpm

# Copy the hit-counter script to the container
COPY . /web

# use chown to grant write permissions to the script
# otherwise the script-caller cannot add the current hits to
# the web file.
RUN chown -R www-data /web/hits

