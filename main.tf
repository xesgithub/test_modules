module "base_infra" {
  source = "C:\\git\\terraform\\modules\\base-infra"
  rg_name = "rg-xes-test"
  tag = {
    creater_name = "Pakapong Reansakulyudee"
    owner_name = "Siwanet Ponkhun"
    owner_email = "siwanato@ais.co.th"
  }
  vnet_name = "vnet-test"
  
  vnet_address_space = ["172.22.32.0/23"]
  #   vnet_subnet = [
  #   {
  #     name = "snet-common-mfaf-tst-aks"
  #     address_prefixes = ["172.22.32.0/23"]
  #   },
  #   {
  #     name = "snet-common-mfaf-tst-lb"
  #     address_prefixes = ["172.22.32.0/23"]
  #   }
  # ]

  # subnets = [
  #   { name = "subnet-vm", cidr = "172.22.32.0/24" },
  #   { name = "subnet-storage", cidr = "172.22.32.128/24" },
  #   # { name = "subnet-3", cidr = "10.0.3.0/24" },
  # ]
  subnets = []
}
