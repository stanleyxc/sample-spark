#!/bin/bash
   #--logs-directory /usr/local/spark/apps/data \
/usr/local/spark/bin/spark-submit \
   --jars /usr/local/spark/apps/releases/aws-java-sdk-s3-1.11.302.jar,/usr/local/spark/apps/releases/aws-java-sdk-core-1.11.302.jar\
   --class "com.databricks.apps.logs.LogAnalyzerAppMain" \
   --master spark://$SPARK_MASTER:7077  \
   /usr/local/spark/apps/releases/uber-log-analyzer-2.0.jar \
   --aws-key $AWS_KEY \
   --aws-secret $AWS_SECRET \
  --logs-directory s3n://$AWS_LOG_DIR \
   --output-html-file /var/www/html/log_stats.html \
   --window-length 30 \
   --slide-interval 5 \
   --checkpoint-directory s3n://$AWS_CHECKPOINT_DIR
