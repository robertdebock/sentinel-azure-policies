module "azure-functions" {
  source = "../../functions/azure.sentinel"
}

module "tfplan-functions" {
  source = "../../functions/tfplan.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
