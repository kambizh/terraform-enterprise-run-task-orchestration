# Terraform Cloud Run Tasks with Ansible Integration

The goal of this work is to explore how we can extend Terraform workflows beyond pure infrastructure provisioning and integrate them with our automation ecosystem, particularly Ansible, in a controlled and reusable way.

# Problem Statement: 

In many real scenarios, provisioning infrastructure is only part of the job.
After resources are created, we might need configuration, compliance steps or etc.

If we perform those steps manually or handle them in separate pipelines.May creates fragmentation and reduces visibility.

So the question this PoC explores is:

## Can Terraform Run Tasks act as a bridge between infrastructure provisioning and downstream automation?



# What is Terrafrom RunTask : 

Think of a Terraform Run Task as a "Check point" you can plug into a Terraform Clound / Enterprise Run (plan/apply) to let an external service inspect, approve or enrich your change before it goes through. 

You can place the RunTask at these stages : 
 - Pre-plan 
 - Post_plan
 - Pre-apply
 - Post-apply
