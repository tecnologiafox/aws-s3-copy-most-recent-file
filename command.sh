#/bin/bash
MOST_RECENT=$(aws s3 ls $FROM_S3_PREFIX | awk '{$1=$2=$3=""; print $0}' | sed 's/^[ \t]*//' | sort -n | tail -n 1)
aws s3 cp s3://$FROM_S3_PREFIX$MOST_RECENT s3://$TO_S3_PREFIX$MOST_RECENT
