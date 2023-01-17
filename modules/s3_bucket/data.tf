data "aws_iam_policy_document" "s3_bucket_policy" {
  statement {
    sid       = "S3BucketPolicy"
    effect    = "Deny"
    resources = ["arn:aws:s3:::${aws_s3_bucket.s3_bucket.arn}/*"]
    actions   = ["s3:*"]

    condition {
      test     = "StringNotEquals"
      variable = "aws:sourceVpc"
      values   = ["${var.vpc_name}"]
    }

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }

  statement {
    sid       = "AllowListFromEC2"
    effect    = "Allow"
    resources = ["arn:aws:s3:::${aws_s3_bucket.s3_bucket.arn}/"]
    actions   = ["s3:ListBucket"]

    condition {
      test     = "StringEquals"
      variable = "aws:sourceVpc"
      values   = ["${var.vpc_name}"]
    }

    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = ["arn:aws:iam::${var.user_arn}"]
    }

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }

  statement {
    sid       = "AllowAccessFromEC2"
    effect    = "Allow"
    resources = ["arn:aws:s3:::${aws_s3_bucket.s3_bucket.arn}/*"]

    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject",
    ]

    condition {
      test     = "StringEquals"
      variable = "aws:sourceVpc"
      values   = ["${var.vpc_name}"]
    }

    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = ["arn:aws:iam::${var.user_arn}"]
    }

    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = ["${var.ec2_arn}"]
    }

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}
# IF YOU WAN'T TO USE A JSON FILE FOR THE POLICY, UNCOMMENT THIS :
/*
data "template_file" "s3_bucket_policy" {
  template = "${file("${path.module}/s3_policy.json")}"
  vars = {
    bucket_name = var.bucket_name
    vpc_name    = var.vpc_name
    user_arn    = var.user_arn
  }
}
*/