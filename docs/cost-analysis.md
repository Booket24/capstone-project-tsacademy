# Cost Analysis

This document summarizes the AWS cost data from `misc/costs.csv` and references the presentation videos included in `misc/`.

## Summary

- Total recorded cost for the project period: **$16.13**
- Most of the cost is concentrated in the final month of record, **March 2026**.
- The primary cost categories are:
  - **Registrar:** $15.00
  - **EC2 - Other:** $1.2222
  - **Tax:** $1.13
  - **Elastic Load Balancing:** $0.00053
  - **EC2 Instances:** $0.00019

## Monthly Cost Breakdown

| Month | Total Cost ($) | Notes |
|------|---------------:|-------|
| 2025-10-01 | 0.00 | No usage recorded |
| 2025-11-01 | 0.00 | No usage recorded |
| 2025-12-01 | 0.00 | No usage recorded |
| 2026-01-01 | 0.00 | No usage recorded |
| 2026-02-01 | -0.0000000389 | Essentially zero; small rounding or adjustment values |
| 2026-03-01 | 16.13 | Primary billed month, includes registrar and EC2-related charges |

## Service-Level Breakdown

The cost file reports the following aggregate service costs across the tracked period:

- Registrar: **$15.00**
- EC2 - Other: **$1.2222**
- Tax: **$1.13**
- Elastic Load Balancing: **$0.00053**
- EC2 Instances: **$0.00019**
- S3: **$0.00000005**
- ECR: **$0.0000000002**
- Secrets Manager: **-$0.0000000072**
- RDS: **-$0.0000000528**
- Data Transfer: **-$1.2229452563**

> Note: Some negative values appear in the raw data. These are very small adjustments or credits and do not materially affect the overall cost estimate.

## Interpretation

The dataset indicates that the main recurring cost driver is the domain registrar fee, with the rest of the AWS service costs remaining near zero for the period covered. The data suggests a minimal execution footprint on AWS beyond the domain registration charge.

## Presentation Videos

The following video files are included in the repository under the `misc/` directory as presentation artifacts for this project:

- `misc/2026-04-08 15-46-50.mp4`
- `misc/2026-04-08 16-03-01.mp4`

These files can be used as the recorded presentations or demonstration videos for the project.

## Recommendations

- Review the AWS usage period to confirm whether the reported costs reflect only the desired project resources.
- Verify domain registrar billing and reconcile it with the application deployment period.
- If this project is extended, continue tracking costs monthly and split the usage by service to identify optimization opportunities.
