package dockerfile

deny contains msg if {
  input[i].Cmd == "from"
  contains(lower(input[i].Value[0]), "latest")
  msg := "Avoid using latest tag"
}

deny contains msg if {
  input[i].Cmd == "user"
  input[i].Value[0] == "root"
  msg := "Container should not run as root"
}
