# Use official Go image as the base image
FROM golang:1.22.4-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code into the working directory
COPY . .

# Build the Go application
RUN go build -o app .

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["./app"]
