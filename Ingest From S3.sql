-- Databricks notebook source
CREATE OR REFRESH STREAMING TABLE
  sthree_ingest
AS SELECT
  *
FROM
  STREAM read_files(
    's3://cengage-demo/',
    format => 'CSV'
  )
