#!/bin/bash

/usr/local/spark/bin/spark-submit \
   --class "com.databricks.apps.logs.LogAnalyzerAppMain" \
   --master local[2] \
   /usr/local/spark/apps/releases/uber-log-analyzer-2.0.jar \
   --logs-directory /usr/local/spark/apps/data \
   --output-html-file /var/www/html/log_stats.html \
   --window-length 30 \
   --slide-interval 5 \
   --checkpoint-directory /tmp/log-analyzer-streaming
