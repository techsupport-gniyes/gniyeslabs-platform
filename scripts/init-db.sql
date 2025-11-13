-- GniyesLabs Database Initialization Script
-- This script creates the initial schemas for the multi-tenant platform

-- Create platform schema for core functionality
CREATE SCHEMA IF NOT EXISTS platform;

-- Create imembergenie schema for membership management module
CREATE SCHEMA IF NOT EXISTS imembergenie;

-- Create ieventgenie schema for event management module
CREATE SCHEMA IF NOT EXISTS ieventgenie;

-- Enable required extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- Grant privileges
GRANT ALL ON SCHEMA platform TO gniyeslabs;
GRANT ALL ON SCHEMA imembergenie TO gniyeslabs;
GRANT ALL ON SCHEMA ieventgenie TO gniyeslabs;

-- Set search path
ALTER DATABASE gniyeslabs_db SET search_path TO platform, imembergenie, ieventgenie, public;

COMMENT ON SCHEMA platform IS 'Core platform schema for tenants, users, billing, and authentication';
COMMENT ON SCHEMA imembergenie IS 'IMemberGenie module schema for membership management';
COMMENT ON SCHEMA ieventgenie IS 'IEventGenie module schema for event management';
