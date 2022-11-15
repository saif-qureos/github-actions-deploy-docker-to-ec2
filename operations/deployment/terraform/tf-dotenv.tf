resource "local_file" "tf-dotenv" {
  filename = format("%s/%s", abspath(path.root), "tf.env")
  content  = <<-EOT
AWS_INSTANCE_URL=${aws_instance.server.public_dns}
EOT
}

