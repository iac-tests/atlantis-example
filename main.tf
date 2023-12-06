# render a simple template that prints the content of a variable

data "template_file" "workspace" {
  template = "${var.workspace}"
}

output "rendered_template" {
  value = data.template_file.workspace.rendered
  description = "The rendered workspace template"
}