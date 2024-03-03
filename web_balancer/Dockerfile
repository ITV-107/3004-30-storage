# Import base image of nginx alpine
FROM nginx:alpine

# Copy the load-balancer configuration to the container
COPY ./nginx.conf /etc/nginx/nginx.conf

# Can't grab information outside of build context (i.e. ".." not allowed)
# Therefore we'll use Compose to bring the web-server content in via Docker volume.

