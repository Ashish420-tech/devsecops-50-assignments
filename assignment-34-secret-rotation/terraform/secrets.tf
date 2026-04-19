resource "aws_secretsmanager_secret" "db_secret" {
  name = "devsecops-rds-secret"
}
resource "aws_secretsmanager_secret_version" "db_secret_version" {
  secret_id = aws_secretsmanager_secret.db_secret.id

  secret_string = jsonencode({
    username = "admin"
    password = "InitialPassword123!"
    host     = aws_db_instance.db.address
    dbname   = "mysql"
  })
}
resource "aws_secretsmanager_secret_rotation" "rotation" {
  secret_id           = aws_secretsmanager_secret.db_secret.id
  rotation_lambda_arn = aws_lambda_function.rotation_lambda.arn

  rotation_rules {
    automatically_after_days = 7
  }
}
