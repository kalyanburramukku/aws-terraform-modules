resource "aws_db_instance" "rds" {
  identifier                          = var.identifier
  engine                              = var.engine
  engine_version                      = var.engine_version
  instance_class                      = var.instance_class
  allocated_storage                   = var.allocated_storage
  storage_type                        = var.storage_type
  storage_encrypted                   = var.storage_encrypted
  kms_key_id                          = var.kms_key_id
  db_subnet_group_name                = var.db_subnet_group_name
  license_model                       = var.license_model
  name                                = var.name
  username                            = var.username
  password                            = var.password
  port                                = var.port
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  performance_insights_enabled        = var.performance_insights_enabled
  performance_insights_kms_key_id     = var.performance_insights_kms_key_id
  vpc_security_group_ids              = var.vpc_security_group_ids
  parameter_group_name                = var.parameter_group_name
  multi_az                            = var.multi_az
  iops                                = var.iops
  publicly_accessible                 = var.publicly_accessible
  allow_major_version_upgrade         = var.allow_major_version_upgrade
  auto_minor_version_upgrade          = var.auto_minor_version_upgrade
  apply_immediately                   = var.apply_immediately
  maintenance_window                  = var.maintenance_window
  skip_final_snapshot                 = var.skip_final_snapshot
  snapshot_identifier                 = var.snapshot_identifier
  copy_tags_to_snapshot               = var.copy_tags_to_snapshot
  backup_retention_period             = var.backup_retention_period
  backup_window                       = var.backup_window
  character_set_name                  = var.character_set_name
  deletion_protection                 = var.deletion_protection
  final_snapshot_identifier           = var.final_snapshot_identifier
  tags = {
    Name        = var.name
    Environment = terraform.workspace
  }
}