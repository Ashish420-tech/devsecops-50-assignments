package authz

default allow = false

allow if {
    input.role == "admin"
}

allow if {
    input.role == "user"
    input.method == "GET"
}
