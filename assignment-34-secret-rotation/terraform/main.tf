resource "aws_db_instance" "db" {
  identifier        = "devsecops-db"
  engine            = "mysql"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  username = "admin"
  password = "InitialPassword123!"  # will be rotated later

  publicly_accessible = true
  skip_final_snapshot = true
}
