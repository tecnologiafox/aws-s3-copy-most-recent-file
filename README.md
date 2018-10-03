# About
Docker image that copies the latest file from a S3 prefix to another prefix.

Very useful for running cronjobs of backup rotation inside Kubernetes.

# Example of usage

docker build -t aws-s3-copy-most-recent-file:1.0.0 .

docker run -e AWS_ACCESS_KEY_ID=AKIAIVOAPAEUAPQVAT5Q -e AWS_SECRET_ACCESS_KEY="NDDisjAHjYRD5l29Ad0mCWVxNOXa7E9Q9Hii8v2bs" -e FROM_S3_PREFIX=backup/hourly/ -e TO_S3_PREFIX=backup/daily/ --rm -ti aws-s3-copy-most-recent-file:1.0.0
