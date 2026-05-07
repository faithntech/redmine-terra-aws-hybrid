resource "aws_key_pair" "redminekey" {
	key_name = "redmine-key"
	public_key = file("${path.module}/.ssh/redminekey.pub")
}
