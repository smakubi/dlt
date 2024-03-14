-- Databricks notebook source
CREATE OR REFRESH STREAMING TABLE
  attendees
AS SELECT
  *
FROM
  STREAM read_files(
    's3://live-demo-cengage/',
    format => 'CSV'
  )
