package dockerfile

deny[msg] {
  input[i].Cmd == "from"
  contains(lower(input[i].Value[0]), "latest")
  msg = "❌ Avoid using latest tag in base image"
}

deny[msg] {
  input[i].Cmd == "user"
  input[i].Value[0] == "root"
  msg = "❌ Container should not run as root user"
}
