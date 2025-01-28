terraform {
  cloud {
    organization = "klatschenderaffe"

    workspaces {
      name = "blubb-workspace"
    }
  }
}
