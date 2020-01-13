resource "kubernetes_namespace" "example" {
  metadata {
#    annotations {
#      name = "example-annotation"
#    }

#    labels {
#      mylabel = "label-value"
#    }

    name = "dev-terraform-system"
  }
}


output "nameSpace" { value =  "${kubernetes_namespace.example.metadata.0.name}"  }
