#used to tag the IAM role to the EC2 instance
resource "aws_iam_instance_profile" "test_profile" {
  name  = "test_profile"
  role = "${aws_iam_role.ec2_s3_access_role.name}"
}