output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer (ALB)."
  value       = aws_lb.alb.dns_name
}