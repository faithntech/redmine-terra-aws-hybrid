resource "aws_key_pair" "redminekey" {
	key_name = "redmine-key"
	public_key = file(".ssh/redminekey.pub")
}
