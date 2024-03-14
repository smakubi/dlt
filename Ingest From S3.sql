-- Databricks notebook source
CREATE OR REFRESH STREAMING TABLE
  makubi.testing.sthree_ingest
AS SELECT
  *
FROM
  STREAM read_files(
    'db_s3_external_databricks-s3-ingest-a3766',
    format => 'CSV'
  )
