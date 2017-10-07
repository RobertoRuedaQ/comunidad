# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

server "151.236.37.83", user: "deploy", roles: %w{app db web}
