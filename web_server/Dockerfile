# We're using a custom php image
FROM php:fpm

# Copy the hit-counter script to the web script
COPY . /web

# Run CHOWN to change the data to the user
RUN chown -R www-data /web/hits
