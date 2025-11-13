# Platform Vision Document
## Multi-Tenant Association Management SaaS Platform

**Version:** 1.0  
**Last Updated:** November 13, 2025  
**Status:** Foundation Document for PRD Development  

---

## Document Purpose

This document serves as the comprehensive foundation for all Product Requirements Documents (PRDs). It contains:
- Confirmed platform architecture decisions
- Business model and pricing structure
- Module definitions and relationships
- User hierarchy and permissions
- Technical stack decisions
- Development priorities and timeline
- All context needed for detailed PRD creation in Claude Code

**No code is included** - this is purely informational and structural.

---

## Table of Contents

1. [Executive Summary](#1-executive-summary)
2. [Platform Identity](#2-platform-identity)
3. [Business Model](#3-business-model)
4. [Platform Architecture](#4-platform-architecture)
5. [Module System](#5-module-system)
6. [User Hierarchy & Permissions](#6-user-hierarchy--permissions)
7. [Multi-Tenancy Design](#7-multi-tenancy-design)
8. [AI Infrastructure](#8-ai-infrastructure)
9. [Subscription & Billing](#9-subscription--billing)
10. [Custom Domains](#10-custom-domains)
11. [Security & Compliance](#11-security--compliance)
12. [Technology Stack](#12-technology-stack)
13. [Development Roadmap](#13-development-roadmap)
14. [Module Specifications](#14-module-specifications)
15. [Integration Patterns](#15-integration-patterns)
16. [Success Metrics](#16-success-metrics)
17. [Risk Management](#17-risk-management)
18. [Future Vision](#18-future-vision)

---

## 1. Executive Summary

### 1.1 What We're Building

A multi-tenant SaaS platform that enables associations, nonprofits, and professional organizations to manage their operations through modular, AI-powered tools. The platform consists of:

- **Core Platform Infrastructure:** Multi-tenant foundation with billing, user management, and shared services
- **IMemberGenie Module:** AI-powered membership management with form builder, member portal, and renewals
- **IEventGenie Module:** AI-driven event management with registration, ticketing, and member integration
- **Future Modules:** Email marketing, fundraising, sponsorship management, advanced analytics

### 1.2 Market Positioning

**Target Market:**
- Small to medium associations (200-25,000 members)
- Professional organizations (medical, legal, engineering societies)
- Nonprofits with membership models
- Trade associations and chambers of commerce

**Competitive Advantages:**
- First-to-market AI-powered form and event builders
- Modern technology stack (versus legacy competitors)
- Modular pricing (pay only for what you need)
- True multi-tenant architecture
- Superior developer velocity with AI-assisted development

**Key Differentiators vs. Competitors:**
- Wild Apricot: Modern UI, AI features, better reporting
- MemberClicks: Lower cost, more flexible, modular approach
- Personify: Simpler, faster implementation, no enterprise bloat

### 1.3 First Customer & Launch Strategy

**AAPI (American Association of Physicians of Indian Origin):**
- 17,000 members
- Beta customer validating platform
- Will use both IMemberGenie and IEventGenie modules
- Annual Convention in June 2026 (event module deadline)
- Willing to accept MVP with limited initial features
- Migrating from legacy ASP.NET system
- Moving to cloud hosting (no on-premises requirement)
- Switching to Stripe for payments
- Accepting PostgreSQL database migration

**Launch Timeline:**
- Platform Core + IMemberGenie: Months 1-5 (February-June 2026)
- IEventGenie Module: Months 6-8 (July-September 2026)
- AAPI Onboarding: Month 9 (October 2026)
- Public Launch: Month 10+ (November 2026)

### 1.4 Business Model Summary

**Revenue Structure:**
```
Base Platform Tiers (based on member count):
- Tier 1 (up to 500): $99/month
- Tier 2 (501-2,000): $199/month  
- Tier 3 (2,001-10,000): $399/month
- Tier 4 (10,001-25,000): $799/month
- Tier 5 (25,000+): Custom

Module Add-ons:
- IMemberGenie: $49/month
- IEventGenie: $49/month
- Email Marketing: $49/month (future)
- Fundraising: $49/month (future)
- Sponsorship: $49/month (future)
- Advanced Analytics: $79/month (future)
```

**Example Pricing:**
- AAPI (17,000 members + both modules): $799 + $49 + $49 = $897/month
- Small nonprofit (300 members + membership): $99 + $49 = $148/month

**Development Cost Model:**
- Solo developer using Claude Code (AI-assisted)
- 9-month development timeline
- Infrastructure: $50-100/month (development), $200-500/month (production)
- AI costs: ~$2.65/month per organization (absorbed in module pricing)
- Break-even: 4-5 paying customers

---

## 2. Platform Identity

### 2.1 Platform Name (To Be Decided)

**Naming Criteria:**
- Memorable and professional
- Easy to spell and pronounce
- Available domain (.com priority)
- Reflects purpose (associations, organizations, members, events)
- Modern but not trendy

**Name Options Under Consideration:**

**Modern/Tech Style:**
1. Unifyd
2. MemberOS
3. Stackify
4. OrgEngine
5. Hubstack

**Professional/Enterprise:**
6. AssociatePro
7. EngageHub
8. ConnectiveCore
9. UnityPlatform
10. CentralOrg

**Descriptive/Clear:**
11. MemberPortal
12. OrganizerPro
13. EventMember
14. TenantHub
15. ModularOrg

**Creative/Unique:**
16. Nexera
17. Orchid
18. Convene
19. Assemblr
20. Unionify

**Short/Punchy:**
21. Membr
22. Eventr
23. Orga
24. Unify
25. Juxta

**Top Recommendations:**
- **Unifyd:** Modern, describes unified platform approach
- **MemberOS:** Positions as "operating system" for associations
- **Convene:** Professional, real word, easy to remember

**Decision Required:** Select platform name before development begins

### 2.2 Module Branding

**IMemberGenie:**
- Full name: "IMemberGenie - AI-Powered Membership Management"
- Tagline: "Intelligent membership management, simplified"
- Icon: Users/People
- Brand color: Blue (#3B82F6)
- Category: Core Module

**IEventGenie:**
- Full name: "IEventGenie - AI-Driven Event Management"
- Tagline: "Create remarkable events with AI assistance"
- Icon: Calendar/Event
- Brand color: Green (#10B981)
- Category: Core Module

### 2.3 Marketing Strategy

**Platform vs. Module Marketing:**
- Market platform as foundation: "[PlatformName] - The modern platform for associations"
- Market modules as products: "Get IMemberGenie powered by [PlatformName]"
- Emphasis on "powered by" maintains platform brand visibility
- Individual module landing pages with separate URLs

**Go-to-Market Approach:**
1. **Month 1-9:** Stealth development with AAPI beta
2. **Month 10:** Soft launch with 5-10 pilot customers
3. **Month 12:** Public launch with case studies
4. **Year 2:** Scale marketing, add new modules

**Primary Channels:**
- Content marketing (association management best practices)
- SEO for "membership management software," "event registration platform"
- Partner network (association consultants, management companies)
- Direct outreach to associations (LinkedIn, industry conferences)

---

## 3. Business Model

### 3.1 Pricing Structure

**Base Platform Tiers:**

Member count determines base platform tier. Counted per IMemberGenie module only (event attendees counted separately).

| Tier | Member Limit | Monthly | Annual (20% off) | Target Organizations |
|------|--------------|---------|------------------|---------------------|
| 1 | Up to 500 | $99 | $950 | Small nonprofits, local chapters |
| 2 | 501-2,000 | $199 | $1,910 | Growing associations |
| 3 | 2,001-10,000 | $399 | $3,830 | Mid-size professional orgs |
| 4 | 10,001-25,000 | $799 | $7,670 | Large associations (AAPI) |
| 5 | 25,000+ | Custom | Custom | Enterprise associations |

**Member Counting Rules:**
- IMemberGenie: Counts active + expired members in database
- IEventGenie: Event attendees counted separately (does NOT affect tier)
- Warning at 90% of limit (e.g., 450/500 members)
- Hard stop at 100% - must upgrade to add more
- Count updated nightly via cron job

**Module Pricing:**

| Module | Monthly | Annual | Status |
|--------|---------|--------|--------|
| IMemberGenie | $49 | $470 | Launch (Month 5) |
| IEventGenie | $49 | $470 | Launch (Month 8) |
| Email Marketing | $49 | $470 | Year 2 |
| Fundraising | $49 | $470 | Year 2 |
| Sponsorship | $49 | $470 | Year 2 |
| Advanced Analytics | $79 | $758 | Year 2 |

**AI Features:**
- Included in module pricing (absorbed cost)
- Quota caps to prevent runaway costs:
  - Form generation: 50/month per organization
  - Event generation: 50/month per organization
  - Admin assistant queries: 200/month per organization
- Quota resets monthly on 1st of month
- No overage charges (hard quota limit)

**Estimated Costs:**
- AI costs: ~$2.65/month per org (5.4% of module price)
- Infrastructure: $200-500/month for 50-200 orgs
- Break-even: 4-5 customers
- Target profitability: 20+ customers by end of Year 1

### 3.2 Revenue Projections

**Conservative Scenario:**

| Month | Customers | Avg Price | MRR | ARR (Run Rate) |
|-------|-----------|-----------|-----|----------------|
| 4 | 1 (AAPI) | $148 | $148 | $1,776 |
| 7 | 1 (AAPI) | $897 | $897 | $10,764 |
| 9 | 6 | $175 | $1,050 | $12,600 |
| 12 | 20 | $175 | $3,500 | $42,000 |
| 24 | 50 | $200 | $10,000 | $120,000 |
| 36 | 100 | $225 | $22,500 | $270,000 |

**Assumptions:**
- Month 4: AAPI goes live with membership module only
- Month 7: AAPI adds event module
- Month 9: Public launch with 5 additional customers
- Average customer: 2,500 members, both core modules

**Key Metrics to Track:**
- Monthly Recurring Revenue (MRR)
- Customer Acquisition Cost (CAC)
- Lifetime Value (LTV)
- Churn rate
- Module adoption rate
- Average Revenue Per Account (ARPA)

### 3.3 Cost Structure

**Development (One-Time):**
- Solo developer: 9 months × 0 (using Claude Code, not hiring)
- Tools & services: $500-1,000 (GitHub, domains, dev tools)
- Total: ~$1,000

**Operating Costs (Monthly):**

**Phase 1 (0-10 customers):**
- Hosting: $50-100
- Database: $10-20
- Email service: $20
- AI costs: $25
- Monitoring: $0 (free tier)
- Total: ~$100-165/month

**Phase 2 (10-50 customers):**
- Hosting: $200-300
- Database: $100-200
- Email service: $50
- AI costs: $100-150
- CDN: $20
- Monitoring: $20-50
- Total: ~$500-770/month

**Phase 3 (50-200 customers):**
- Hosting: $500-800
- Database: $300-500
- Email service: $100-200
- AI costs: $400-600
- CDN: $50-100
- Monitoring: $50-100
- Support tools: $50-100
- Total: ~$1,450-2,400/month

### 3.4 Upgrade/Downgrade Policies

**Upgrades (Immediate):**
- Member limit reached → Prompt to upgrade tier
- Add module → Immediate activation (3-hour cooldown)
- Proration: Credit unused time on old plan, charge prorated amount on new plan
- No downtime during upgrade

**Downgrades (End of Billing Period):**
- Remove module → Service continues until period end, then deactivated
- Lower tier → Only if current member count allows
- Cannot downgrade if over new tier limit (must delete members first)
- No proration on downgrade (service through end of paid period)

**Module Deactivation:**
- Data archived for 2 years (read-only access)
- Can reactivate with full data restoration
- After 2 years: Data permanently deleted (with 30-day warning)

---

## 4. Platform Architecture

### 4.1 System Architecture

**High-Level Components:**

**Frontend Layer:**
- React 18+ with Vite build system
- TypeScript for type safety
- Tailwind CSS for styling
- shadcn/ui component library
- Module-based routing with lazy loading
- Responsive design (mobile, tablet, desktop)

**Backend Layer:**
- NestJS framework (Node.js/TypeScript)
- RESTful API architecture
- JWT authentication with refresh tokens
- Role-based access control (RBAC)
- Module system for extensibility

**Data Layer:**
- PostgreSQL 15+ (primary database)
- Redis 7+ (caching and sessions)
- Logical schema separation for modules
- Full-text search capabilities

**File Storage:**
- Cloudflare R2 or AWS S3
- Member photos, documents, event materials

**External Services:**
- Stripe: Payment processing and subscriptions
- OpenAI GPT-4: Form generation, admin assistant
- Anthropic Claude: Event generation, complex reasoning
- Resend: Transactional emails
- Customer.io: Marketing emails (future)

**Infrastructure:**
- Hosting: Railway (initial) → AWS (scale)
- CDN: Cloudflare
- Monitoring: Better Stack + Sentry
- CI/CD: GitHub Actions

### 4.2 Deployment Architecture

**Environments:**

**Development:**
- Local Docker containers
- PostgreSQL + Redis locally
- Mock external services
- Hot module replacement for fast iteration

**Staging:**
- Railway hosted (shared)
- Real external services (test mode)
- Custom subdomain: staging.platform.com
- Automated deployments from main branch

**Production:**
- Railway Pro or AWS ECS
- Multi-instance for redundancy
- Automated backups (hourly incremental, daily full)
- Blue-green deployment strategy
- Zero-downtime deployments

**Scaling Strategy:**
- Phase 1 (0-50 orgs): Single instance + single database
- Phase 2 (50-200 orgs): 2-3 instances + read replicas
- Phase 3 (200-1000 orgs): Auto-scaling + database sharding

### 4.3 Data Flow

**Request Lifecycle:**

1. **Request arrives** at load balancer (Cloudflare)
2. **Custom domain routing** determines tenant
3. **Authentication middleware** validates JWT
4. **Tenant context** loaded from domain/token
5. **Authorization check** validates permissions
6. **Rate limiting** enforces quotas per tenant
7. **Business logic** executes in appropriate module
8. **Database queries** automatically filtered by tenant_id
9. **Response** returned with appropriate headers
10. **Audit log** records action (if applicable)

**Module Interaction:**

When IEventGenie needs member data from IMemberGenie:
1. Check if tenant has IMemberGenie active
2. If yes: Direct database query across schemas
3. Join on shared user_id (SSO)
4. Return combined data
5. Update cross-module references (event attendance in member profile)

**Background Jobs:**

Handled by BullMQ + Redis:
- Nightly member count updates
- Scheduled email campaigns
- Report generation
- AI usage aggregation
- Module provisioning (3-hour cooldown)
- Data archival for deactivated modules

---

## 5. Module System

### 5.1 Module Architecture

**What is a Module?**

A module is a self-contained feature set that:
- Has its own database schema
- Provides specific functionality (membership, events, etc.)
- Can be independently activated/deactivated per tenant
- Integrates with platform core and other modules
- Has separate pricing
- Includes its own frontend routes and backend APIs

**Module Structure:**

Each module consists of:
- **Database Schema:** Tables specific to module functionality
- **Backend Services:** Business logic and API endpoints
- **Frontend Routes:** UI components and pages
- **AI Features:** Optional AI-powered capabilities
- **Integration Points:** Connections to other modules

**Module Lifecycle:**

1. **Development:** Module built as NestJS module
2. **Registration:** Added to module registry
3. **Deployment:** Deployed with platform
4. **Activation:** Tenant purchases and activates module
5. **Provisioning:** 3-hour cooldown, setup runs
6. **Active:** Fully functional for tenant
7. **Deactivation:** Tenant cancels, data archived
8. **Reactivation:** Can reactivate with data restoration

### 5.2 Core Modules

**IMemberGenie Module:**

**Purpose:** Comprehensive membership management with AI-powered form builder

**Key Features:**
- AI Form Builder (natural language to form generation)
- Member database with unlimited custom fields
- Member types, categories, and levels
- Member portal (login, profile, renewal)
- Payment processing for membership fees
- Renewal workflows and reminders
- Bulk import/export (CSV)
- Admin dashboard and reporting
- AI admin assistant

**Database Schema:** imembergenie
**Routes:** /members, /forms, /renewals, /portal
**Pricing:** $49/month
**AI Quota:** 50 form generations/month

**IEventGenie Module:**

**Purpose:** Event management with registration, ticketing, and AI event builder

**Key Features:**
- AI Event Builder (natural language to event structure)
- Event creation (single day or multi-day)
- Registration forms with custom fields
- Ticketing system (multiple ticket types)
- Member vs. non-member pricing
- Payment processing for tickets
- Attendee management and check-in
- Integration with IMemberGenie (auto-populate member data)
- Email confirmations and reminders
- Admin dashboard and reporting
- AI admin assistant

**Database Schema:** ieventgenie
**Routes:** /events, /registrations, /tickets, /check-in
**Pricing:** $49/month
**AI Quota:** 50 event generations/month
**Optional Integration:** IMemberGenie (if tenant has both modules)

### 5.3 Future Modules (Year 2 Roadmap)

**Email Marketing Module:**

**Purpose:** Newsletter builder, campaign management, segmentation

**Key Features:**
- Visual email builder
- Campaign scheduling
- List segmentation (by member type, custom fields)
- A/B testing
- Campaign analytics (opens, clicks, conversions)
- Integration with IMemberGenie (auto-sync member lists)

**Pricing:** $49/month
**Launch Target:** Month 13-15

**Fundraising/Donations Module:**

**Purpose:** Donation campaigns, recurring giving, grant tracking

**Key Features:**
- Donation pages with customizable forms
- Recurring donation setup
- Donor management
- Grant tracking and reporting
- Integration with accounting software (future)
- Tax receipt generation

**Pricing:** $49/month
**Launch Target:** Month 16-18

**Sponsorship Management Module:**

**Purpose:** Sponsor tiers, benefits tracking, invoicing

**Key Features:**
- Sponsor tier definition
- Benefit tracking and fulfillment
- Sponsor portal
- Logo/branding management
- Invoicing and payment tracking
- Integration with IEventGenie (event sponsorships)

**Pricing:** $49/month
**Launch Target:** Month 19-21

**Advanced Analytics Module:**

**Purpose:** Business intelligence, predictive analytics, dashboards

**Key Features:**
- Custom report builder
- Predictive analytics (churn prediction, renewal forecasting)
- Data visualization dashboards
- Exportable reports (PDF, Excel)
- Scheduled report delivery
- Cross-module analytics

**Pricing:** $79/month (premium module)
**Launch Target:** Month 22-24

### 5.4 Module Integration Patterns

**Shared User Authentication (SSO):**
- Single login across all modules
- User account created in platform core
- Modules reference user_id from platform.users table
- JWT token includes accessible modules

**Cross-Module Data Access:**
- Direct database queries across schemas (same database)
- Service-to-service calls for complex operations
- Foreign key references where appropriate
- Event-driven updates for data synchronization

**Example Integration: Member Registers for Event**

Flow when IMemberGenie + IEventGenie both active:
1. User logs in (SSO) - authenticated once
2. Navigates to Events section (IEventGenie routes)
3. Clicks "Register for Event"
4. IEventGenie checks: Is user a member? (query imembergenie schema)
5. If member: Apply member pricing, pre-fill registration form with member data
6. If not member: Use non-member pricing, manual form entry
7. User completes registration and payment
8. IEventGenie creates registration record
9. IEventGenie updates IMemberGenie with event attendance record
10. User sees event attendance in their member profile

**Data Synchronization:**
- Real-time: Cross-module queries during transactions
- Async: Background jobs update denormalized data
- Event bus: Modules publish events, others subscribe (future)

---

## 6. User Hierarchy & Permissions

### 6.1 User Roles

**Four-Tier Hierarchy:**

**1. Super Admin (Platform Owner)**
- Role: Platform operator (you/your team)
- Access: All tenants, all data, system configuration
- Permissions: Full platform control, tenant management, module deployment
- Count: 1-5 people (your team)

**2. Organization Admin (Tenant Level)**
- Role: Top-level admin for an organization (e.g., AAPI Executive Director)
- Access: Full access to their organization only
- Permissions: Purchase/cancel modules, manage users, billing, all module admin capabilities
- Count: 1-3 per organization typically
- Creation: First user who signs up becomes Org Admin

**3. Module Admin (Module Level)**
- Role: Admin for specific module (e.g., Membership Coordinator, Event Manager)
- Access: Full access to assigned module within their organization
- Permissions: Manage module data, use AI features, run reports, create users
- Count: 1-5 per module per organization
- Creation: Automatically created when module activated (1 default), Org Admin can create more

**4. User (Member/Attendee)**
- Role: Regular member or event attendee
- Access: Self-service portal only
- Permissions: View own profile, update info, renew membership, register for events
- Count: Hundreds to thousands per organization
- Creation: Self-registration or bulk import by admins

**Role Assignment Rules:**

- Org Admin: First signup becomes Org Admin; can promote others; must have at least one
- Module Admin: Auto-created on module activation; Org Admin can create more
- Users: Created by admins or self-registration
- Same person can be Org Admin + multiple Module Admins
- Super Admin can impersonate any role for support

### 6.2 Permission Matrix

**Format: Resource:Action**

**Platform-Level Permissions:**
- tenants:create → Super Admin only
- tenants:read → Super Admin, Org Admin (own tenant)
- tenants:update → Super Admin, Org Admin (own tenant)
- tenants:delete → Super Admin only
- modules:purchase → Super Admin, Org Admin
- users:invite → Super Admin, Org Admin, Module Admin

**IMemberGenie Permissions:**
- members:create → Super Admin, Org Admin, IMemberGenie Admin
- members:read → All roles (own data) + Admins (all data)
- members:update → Super Admin, Org Admin, IMemberGenie Admin, User (own profile)
- members:delete → Super Admin, Org Admin, IMemberGenie Admin
- forms:create → Admins only
- ai:generate_form → Admins only

**IEventGenie Permissions:**
- events:create → Super Admin, Org Admin, IEventGenie Admin
- events:read → All roles
- events:update → Super Admin, Org Admin, IEventGenie Admin
- registrations:create → All roles (can register for events)
- registrations:manage → Admins only
- ai:generate_event → Admins only

**Enforcement:**
- Backend: Guard decorators on API routes
- Frontend: Conditional rendering based on user role
- Database: Row-level security for tenant isolation

### 6.3 User Onboarding Flows

**Organization Signup (New Tenant):**
1. Visit platform.com/signup
2. Enter organization details (name, email, industry)
3. Select plan tier and modules
4. Enter payment information (Stripe Checkout)
5. Email verification
6. Account created → User becomes Org Admin
7. Welcome email with onboarding steps
8. 3-hour cooldown for module provisioning
9. Onboarding call scheduled (optional)

**Module Admin Creation:**
- Automatic: One admin created per module on activation
- Manual: Org Admin invites additional module admins
- Email invitation sent with setup link
- Accept invitation → Set password → Access module

**Member/User Registration:**
- Admin creates: Bulk import CSV or individual creation
- Self-registration: Public signup form (if enabled)
- Approval workflow: Optional admin approval before activation
- Welcome email with login credentials

---

## 7. Multi-Tenancy Design

### 7.1 Tenant Isolation Strategy

**Chosen Approach: Logical Separation (Schema-Based)**

**Implementation:**
- Single PostgreSQL database
- Multiple schemas: platform, imembergenie, ieventgenie
- Every table has tenant_id column
- Row-Level Security (RLS) enforces tenant isolation
- ORM middleware auto-injects tenant_id in queries

**Why This Approach:**
- Fast cross-module queries (same database)
- Lower infrastructure costs
- Simpler backups and migrations
- Easy to scale to 100-500 organizations
- Can migrate to physical separation later if needed

**Alternative Considered:**
- Physical separation (separate databases per tenant)
- Rejected due to: Higher costs, complex migrations, slower cross-module queries
- May revisit for enterprise tier (25,000+ members)

### 7.2 Tenant Context Management

**How Tenant is Identified:**

**Method 1: Custom Domain**
- User visits membership.aapiusa.org
- DNS points to platform infrastructure
- Platform extracts "aapiusa" from domain
- Looks up tenant by custom domain mapping
- Sets tenant context for request

**Method 2: Subdomain**
- User visits aapi.platform.com
- Platform extracts "aapi" slug
- Looks up tenant by slug
- Sets tenant context

**Method 3: JWT Token**
- User already logged in
- JWT contains tenantId
- Platform extracts from token
- Sets tenant context

**Tenant Context Propagation:**
- Set in middleware early in request lifecycle
- Available to all downstream services
- Automatically filters all database queries
- Logged in audit trails

**Protection Against Cross-Tenant Access:**
- ORM enforces tenant_id filtering
- Row-Level Security at database level
- API endpoints validate tenant ownership
- No direct database access without tenant context

### 7.3 Tenant Data Model

**Core Tenant Entity:**
- id: Unique identifier (UUID)
- name: Organization name (e.g., "AAPI")
- slug: URL-safe identifier (e.g., "aapi")
- status: active | suspended | cancelled
- planTier: 1 | 2 | 3 | 4 | 5
- memberLimit: 500 | 2000 | 10000 | 25000 | unlimited
- currentMemberCount: Cached count, updated nightly
- activeModules: Array of module IDs
- customDomains: Mapping of module to custom domain
- timezone: Organization timezone
- currency: USD, EUR, etc.
- createdAt, updatedAt, deletedAt

**Tenant Lifecycle:**
1. **Creation:** Signup → Payment → Account created
2. **Active:** Normal operations, billing current
3. **Suspended:** Payment failed, limited access (read-only)
4. **Cancelled:** Subscription ended, grace period (30 days)
5. **Deleted:** After grace period, soft delete (data retained 90 days)

### 7.4 Tenant Limits & Quotas

**Member Limits (by tier):**
- Enforced at member creation
- Warning at 90% of limit
- Hard stop at 100% (must upgrade)
- Updated nightly via cron job

**AI Usage Limits (per module):**
- Form generation: 50/month
- Event generation: 50/month
- Admin assistant: 200/month
- Enforced before API call
- Quota resets on 1st of month

**Storage Limits:**
- Tier 1-2: 5GB file storage
- Tier 3-4: 25GB file storage
- Tier 5: Unlimited
- Enforced at file upload

**API Rate Limits:**
- Read operations: 1000/hour
- Write operations: 200/hour
- Delete operations: 50/hour
- Per-tenant enforcement using Redis

---

## 8. AI Infrastructure

### 8.1 AI Providers

**OpenAI GPT-4 Turbo:**
- Used for: Form generation, admin assistant
- Strengths: Fast, reliable, JSON mode for structured output
- Pricing: $10/1M input tokens, $30/1M output tokens
- Typical cost per action: $0.02-0.05

**Anthropic Claude 3.5 Sonnet:**
- Used for: Event structure generation, complex reasoning
- Strengths: Longer context, better at complex tasks
- Pricing: $3/1M input tokens, $15/1M output tokens
- Typical cost per action: $0.05-0.10

**Selection Logic:**
- Simple structured output → GPT-4
- Complex multi-step reasoning → Claude
- Cost optimization: Use cheapest model that works
- Can switch models based on performance/cost analysis

### 8.2 AI Features

**AI Form Builder (IMemberGenie):**

**Input:**
- Natural language prompt from admin
- Organization type context (optional)
- Existing forms as examples (optional)

**Process:**
1. Admin types: "Create membership form with name, email, medical specialty, board certification, years in practice"
2. System calls GPT-4 with structured prompt
3. AI generates form JSON (fields, types, validation)
4. System renders preview
5. Admin can edit/refine
6. AI learns from edits for future generations

**Output:**
- Form structure with fields, sections, validation rules
- Field types (text, dropdown, checkbox, file upload)
- Default values and placeholders
- Required/optional designations

**Improvements Over Time:**
- AI analyzes admin edits
- Learns organization-specific preferences
- Suggests common fields for org type
- Gets better with each generation

**AI Event Builder (IEventGenie):**

**Input:**
- Natural language description
- Event type (conference, workshop, gala)
- Duration and complexity

**Process:**
1. Admin types: "3-day medical conference with 5 tracks and 20 sessions"
2. System calls Claude with event generation prompt
3. AI creates event structure:
   - Days/dates
   - Tracks (parallel sessions)
   - Session slots with times
   - Breaks and meals
4. Admin reviews and customizes
5. Admin sets pricing (AI does NOT suggest prices)

**Output:**
- Day-by-day schedule
- Track structure
- Session placeholders
- Time slots and room assignments
- No pricing or logistics (admin decides)

**AI Admin Assistant:**

**Available in all modules**

**Functionality:**
- Contextual help for current page/task
- Natural language queries: "How do I export member list?"
- Data queries: "Show me members who haven't renewed"
- Report generation: "Create attendance report by specialty"

**Implementation:**
- Chat interface accessible from any admin page
- Context includes: Current page, user role, recent actions
- GPT-4 for conversational responses
- Can execute actions if permissions allow

**Quota:** 200 queries/month per organization

### 8.3 AI Cost Management

**Cost Absorption Strategy:**
- AI costs included in module pricing ($49/month)
- No per-use charges to users
- Quota caps prevent runaway costs

**Projected Costs:**
- Form generation: $0.05 × 25/month = $1.25
- Event generation: $0.08 × 5/month = $0.40
- Admin assistant: $0.02 × 50/month = $1.00
- **Total per org: ~$2.65/month**
- **As % of module price: 5.4%** (acceptable margin)

**Protection Mechanisms:**
- Hard quota limits (50 generations, 200 queries)
- Usage monitoring and alerts
- Prompt optimization to reduce tokens
- Response caching for common queries

**Scaling Costs:**
- 20 orgs: $53/month AI costs
- 100 orgs: $265/month AI costs
- 500 orgs: $1,325/month AI costs

At 500 orgs with 2 modules each:
- Revenue: 500 × $99 base + 500 × $98 modules = $98,500/month
- AI costs: $1,325/month (1.3% of revenue)
- Still profitable even at scale

### 8.4 AI Usage Tracking

**Metrics Collected:**
- Tenant ID and module
- Action type (form gen, event gen, admin assist)
- AI model used
- Input/output token counts
- API cost
- Timestamp
- Prompt preview (first 200 chars)

**Purposes:**
- Enforce quota limits
- Track costs per tenant
- Identify heavy users
- Optimize prompts
- Improve AI features
- Super admin analytics

**Dashboard for Super Admin:**
- Total AI costs across platform
- Cost per tenant
- Most used AI features
- Quota utilization rates
- Cost trends over time

---

## 9. Subscription & Billing

### 9.1 Stripe Integration

**Why Stripe:**
- Built for subscriptions (not one-time payments)
- Automatic retry on failed payments
- Prorated upgrades/downgrades
- Invoice generation
- Tax calculation (Stripe Tax)
- Superior webhooks
- Excellent documentation

**Stripe Product Structure:**

**Platform Base:**
- Product: "Platform Base Subscription"
- 5 Prices (one per tier): $99, $199, $399, $799, Custom

**IMemberGenie:**
- Product: "IMemberGenie Module"
- 2 Prices: $49/month, $470/year

**IEventGenie:**
- Product: "IEventGenie Module"
- 2 Prices: $49/month, $470/year

**Future modules:** Same pattern

### 9.2 Subscription Lifecycle

**Creation (Signup):**
1. User selects plan + modules
2. Stripe Checkout hosted page
3. User enters payment info
4. Stripe creates customer + subscription
5. Webhook confirms payment
6. Platform activates tenant
7. Welcome email sent

**Active Subscription:**
- Stripe auto-charges monthly/annually
- Successful payment → Continue service
- Failed payment → Retry 3 times over 2 weeks
- Still failed → Suspend tenant (read-only)

**Upgrades (Immediate):**
- User clicks upgrade (higher tier or add module)
- Stripe calculates proration
- Charge difference immediately
- Service upgraded instantly (modules: 3-hour cooldown)

**Downgrades (End of Period):**
- User clicks downgrade or remove module
- Service continues until end of billing period
- No proration (no refund)
- At period end: Tier lowered or module deactivated

**Cancellation:**
- User cancels subscription
- Service continues until end of billing period
- Data enters 30-day grace period (read-only)
- After 30 days: Soft delete
- After 90 days: Hard delete (data gone)

**Reactivation:**
- Within 30 days: Full restoration, no data loss
- After 30 days: Need to repurchase, data may be gone
- Module reactivation within 2 years: Full data restoration

### 9.3 Billing Events (Stripe Webhooks)

**checkout.session.completed:**
- New subscription created
- Activate tenant account
- Send welcome email

**invoice.payment_succeeded:**
- Recurring payment successful
- Continue service
- Send receipt

**invoice.payment_failed:**
- Payment failed (retry in progress)
- Send payment failure notification
- Retry up to 3 times

**customer.subscription.updated:**
- Plan or module changed
- Update tenant record
- Send confirmation email

**customer.subscription.deleted:**
- Subscription cancelled
- Start grace period
- Send cancellation confirmation

**invoice.finalized:**
- Invoice generated
- Send invoice email (if different from payment method email)

### 9.4 Member Limit Enforcement

**How Limits Work:**

Per-module counting:
- IMemberGenie: Counts active + expired memberships
- IEventGenie: Counts separately (doesn't affect tier)

**Enforcement Points:**

**1. Nightly Count Update:**
- Cron job runs at 2am (platform timezone)
- Queries member count for each tenant
- Updates cached count in tenant record
- Sends alerts if approaching limit

**2. Real-Time Check (Member Creation):**
- Before creating new member
- Check: currentMemberCount < memberLimit
- If at limit: Throw error with upgrade prompt
- If under limit: Allow creation, increment count

**3. Dashboard Warning:**
- At 90% of limit: Banner with upgrade CTA
- At 100%: Error modal blocking member creation
- Clear messaging: "You've reached your limit. Upgrade to add more members."

**Upgrade Flow:**
- One-click upgrade from warning/error
- Stripe calculates proration
- Immediate tier increase
- Member can be added immediately

---

## 10. Custom Domains

### 10.1 Custom Domain Support

**Purpose:**
Organizations want to use their own domains for member-facing pages:
- membership.aapiusa.org (member portal)
- events.aapiusa.org (event registration)

Backend admin remains on platform domain (no white-labeling).

**Implementation Level: Level 1**

**What's Included:**
- Custom domain for member-facing pages
- Platform branding still visible ("Powered by [Platform]")
- SSL certificates (via Cloudflare)
- Automatic domain verification

**What's NOT Included (White-Label):**
- White-label (remove all platform branding): +$199/month (future premium feature)
- Custom domain for admin backend: Not supported

### 10.2 Custom Domain Setup Flow

**1. Organization Admin Requests Custom Domain:**
- Navigate to Settings → Custom Domains
- Enter desired domain (membership.aapiusa.org)
- Select module (IMemberGenie or IEventGenie)
- Submit request

**2. Platform Provides DNS Instructions:**
- CNAME record to add:
  - Type: CNAME
  - Name: membership
  - Value: custom-domains.platform.com
  - TTL: 3600

**3. Organization Updates DNS:**
- Log into domain registrar (GoDaddy, Namecheap, etc.)
- Add CNAME record as instructed
- Save changes (propagation: 5 mins - 48 hours)

**4. Platform Verifies Domain:**
- Automated check every hour
- Attempts to resolve domain to platform IP
- When successful: Status changes to "Verified"

**5. SSL Certificate Provisioning:**
- Cloudflare automatically provisions SSL certificate
- Certificate issued within minutes of verification
- HTTPS enforced automatically

**6. Domain Activated:**
- Custom domain now works
- Users can access membership.aapiusa.org
- Old platform URL still works (aapi.platform.com)

**Timeline:** 1-48 hours depending on DNS propagation

### 10.3 Module-Specific Domains

**Separate Domains Per Module:**

Organizations with both modules can use:
- membership.aapiusa.org → IMemberGenie module
- events.aapiusa.org → IEventGenie module

**Routing Logic:**
1. Request hits membership.aapiusa.org
2. Platform looks up custom domain mapping
3. Finds: Tenant "AAPI", Module "IMemberGenie"
4. Sets tenant context + module context
5. Routes to IMemberGenie frontend
6. Displays member portal

**Single Domain Option:**

Organizations can also use single domain with paths:
- aapiusa.org/members → IMemberGenie
- aapiusa.org/events → IEventGenie

Requires root domain CNAME (more complex setup).

### 10.4 Technical Implementation

**Domain Storage:**
- Tenant record includes customDomains object
- Maps domain to module: { "membership.aapiusa.org": "imembergenie" }

**DNS Verification:**
- Nightly cron job checks pending domains
- Attempts DNS resolution
- Updates verification status
- Triggers SSL provisioning when verified

**SSL Certificates:**
- Cloudflare handles automatically
- Wildcard cert not needed (individual certs per domain)
- Auto-renewal

**Fallback:**
- If custom domain fails: Default to platform subdomain
- Never breaks functionality

---

## 11. Security & Compliance

### 11.1 Authentication

**JWT-Based Authentication:**

**Access Tokens:**
- Short-lived: 15 minutes
- Stored in memory (frontend)
- Contains: user ID, tenant ID, role, modules
- Signed with platform secret

**Refresh Tokens:**
- Long-lived: 30 days
- Stored in HTTP-only cookie (secure, SameSite=strict)
- Used to get new access token
- Revocable (stored in database)

**Login Flow:**
1. User enters email/password
2. Backend validates credentials
3. Generates access token (15 min) + refresh token (30 days)
4. Returns access token, sets refresh token cookie
5. Frontend stores access token in memory
6. Subsequent requests include access token in Authorization header

**Token Refresh Flow:**
1. Access token expires
2. Frontend detects 401 error
3. Calls /api/auth/refresh with cookie
4. Backend validates refresh token
5. Generates new access token
6. Frontend retries original request

**Security Features:**
- Password hashing: bcrypt (cost factor 12)
- Password requirements: 12+ chars, mixed case, numbers, symbols
- Rate limiting on login: 5 attempts per 15 min
- Account lockout: After 10 failed attempts
- 2FA: Email-based (future: TOTP)
- Session management: Can revoke all sessions

### 11.2 Authorization (RBAC)

**Permission Model:**

Format: resource:action

Examples:
- members:create
- events:read
- tenants:delete
- ai:generate_form

**Role-Permission Mapping:**
- Super Admin: All permissions
- Org Admin: All tenant-level + module permissions
- Module Admin: Module-specific permissions
- User: Self-service permissions only

**Enforcement:**
- Backend: Guard decorators on routes
- Frontend: Conditional rendering
- Database: Row-level security

**Permission Inheritance:**
- Org Admin inherits all Module Admin permissions
- Super Admin inherits all permissions

### 11.3 Data Security

**Encryption at Rest:**
- Database: AWS RDS encryption (AES-256)
- File storage: S3/R2 server-side encryption
- Sensitive fields: Additional app-level encryption (SSN, DOB)

**Encryption in Transit:**
- TLS 1.3 required
- HSTS enabled (force HTTPS)
- Certificate pinning (API calls)

**PII Protection:**
- Identify sensitive fields (SSN, DOB, medical info)
- Encrypt at application level before storage
- Decrypt only when needed
- Audit all access to sensitive data

**Data Retention:**
- Active tenants: Data retained indefinitely
- Cancelled tenants: 30-day grace period, then soft delete
- Soft deleted: 90 days, then hard delete
- Backups: Retained for 30 days

### 11.4 Payment Security (PCI Compliance)

**Strategy: SAQ-A Compliance (Simplest)**

**How Achieved:**
- Never store credit card numbers
- Never touch card data on our servers
- Use Stripe Checkout (hosted payment page)
- Only store Stripe customer ID and payment method ID

**Payment Flow:**
1. User clicks "Pay"
2. Redirects to Stripe Checkout
3. User enters card on Stripe's servers
4. Stripe processes payment
5. Redirects back to platform
6. Webhook confirms payment
7. Service activated

**Platform never sees card numbers!**

**Compliance Requirements:**
- Annual SAQ-A questionnaire
- Maintain secure infrastructure
- Regular security audits
- Penetration testing (annual)

### 11.5 Rate Limiting

**Purpose:**
- Prevent abuse
- Protect against DDoS
- Control AI costs
- Ensure fair usage

**Limits by Endpoint Type:**

**Authentication:**
- Login: 5 attempts per 15 min
- Register: 3 attempts per hour
- Password reset: 3 attempts per hour

**API Endpoints (per tenant):**
- Read operations: 1000 per hour
- Write operations: 200 per hour
- Delete operations: 50 per hour

**AI Endpoints:**
- Form generation: 10 per hour (in addition to monthly quota)
- Event generation: 5 per hour
- Admin assistant: 50 per hour

**Implementation:**
- Redis-based counters
- Sliding window algorithm
- Per-tenant enforcement
- Return 429 Too Many Requests when exceeded

### 11.6 Audit Logging

**What's Logged:**
- All create/update/delete operations
- Login/logout events
- Permission changes
- Module activation/deactivation
- Billing events
- AI usage

**Log Contents:**
- Tenant ID
- User ID
- Action performed
- Resource affected
- Changes made (before/after)
- IP address
- User agent
- Timestamp
- Success/failure

**Retention:**
- Active logs: 1 year
- Archived logs: 7 years (compliance)
- Available for export

**Use Cases:**
- Security investigations
- Compliance audits
- Debugging support issues
- User activity tracking

---

## 12. Technology Stack

### 12.1 Backend

**Framework: NestJS**

**Why NestJS:**
- TypeScript-first (type safety)
- Built-in module system (perfect for our architecture)
- Dependency injection (clean code)
- Excellent documentation
- Active community
- Enterprise-ready patterns

**Key Libraries:**
- Prisma: ORM for database access
- Passport: Authentication strategies
- class-validator: Request validation
- BullMQ: Background job processing
- @nestjs/swagger: API documentation

**API Style:**
- RESTful primary
- GraphQL optional (future for complex queries)
- WebSockets for real-time (future)

### 12.2 Frontend

**Framework: React 18+**

**Why React:**
- Most popular (largest talent pool)
- Excellent ecosystem
- Great performance
- Component reusability
- Claude Code excels at React

**Build Tool: Vite**

**Why Vite:**
- Extremely fast dev server
- Hot module replacement
- Optimized production builds
- Better than Create React App
- Modern tooling

**UI Framework: Tailwind CSS**

**Why Tailwind:**
- Utility-first (rapid development)
- No CSS file management
- Responsive design built-in
- Highly customizable
- Small production bundle

**Component Library: shadcn/ui**

**Why shadcn:**
- Beautiful, accessible components
- Copy-paste approach (full control)
- Built on Radix UI (accessibility)
- Tailwind-based
- Actively maintained

**State Management: Zustand**

**Why Zustand:**
- Simple API
- No boilerplate
- TypeScript support
- Small bundle size
- Better than Redux for small teams

**Routing: React Router v6**

### 12.3 Database

**Primary: PostgreSQL 15+**

**Why PostgreSQL:**
- Open source (no licensing costs)
- Excellent performance
- JSONB for flexible data
- Full-text search
- Row-level security (multi-tenancy)
- Mature ecosystem
- Great tooling

**Hosting:**
- Development: Local Docker
- Staging: Railway PostgreSQL
- Production: AWS RDS or Neon

**Schema Design:**
- Logical separation (schemas for modules)
- platform schema: Core tables
- imembergenie schema: Membership tables
- ieventgenie schema: Event tables

**ORM: Prisma**

**Why Prisma:**
- Type-safe database access
- Great migrations
- Excellent DX
- Auto-completion
- Works well with NestJS

### 12.4 Caching & Sessions

**Redis 7+**

**Use Cases:**
- Session storage
- Rate limiting counters
- Cache layer for expensive queries
- Background job queue (BullMQ)
- Real-time features (pub/sub)

**Hosting:**
- Development: Local Docker
- Production: Railway Redis or AWS ElastiCache

### 12.5 File Storage

**Cloudflare R2 or AWS S3**

**Use Cases:**
- Member profile photos
- Event images and materials
- Document uploads
- Form attachments
- Generated reports

**Why R2/S3:**
- Scalable
- Reliable
- CDN integration
- Cheap ($0.015/GB for R2)
- Global availability

### 12.6 External Services

**Stripe:**
- Payment processing
- Subscription management
- Customer management
- Invoice generation

**OpenAI:**
- GPT-4 Turbo API
- Form generation
- Admin assistant

**Anthropic:**
- Claude 3.5 Sonnet API
- Event generation
- Complex reasoning

**Resend:**
- Transactional emails
- Simple API
- Great deliverability
- $20/month for 10K emails

**Better Stack (formerly Logtail):**
- Application monitoring
- Error tracking
- Log aggregation
- Uptime monitoring

**Sentry:**
- Error tracking
- Performance monitoring
- Release tracking

### 12.7 Infrastructure

**Hosting: Railway (Initial) → AWS (Scale)**

**Why Railway for Launch:**
- Simple deployment
- Auto-scaling
- PostgreSQL included
- $20-50/month to start
- Zero DevOps
- Great for MVP

**Migration to AWS:**
- When: 50-100 customers
- Why: More control, better pricing at scale
- Services: ECS, RDS, ElastiCache, S3, CloudFront

**CDN: Cloudflare**
- Free tier excellent
- DDoS protection
- SSL certificates
- Fast global network

**CI/CD: GitHub Actions**
- Automated testing
- Automated deployments
- Branch protection
- Deploy previews

### 12.8 Monitoring & Logging

**Application Monitoring:**
- Better Stack: Log aggregation, uptime
- Sentry: Error tracking, performance

**Infrastructure Monitoring:**
- Railway metrics (built-in)
- AWS CloudWatch (when migrated)

**Custom Metrics:**
- Tenant count
- Active users per tenant
- API response times
- AI usage and costs
- Revenue metrics (MRR, ARR)

**Alerts:**
- Error rate spikes
- API latency increases
- Payment failures
- AI quota exceeded
- Database connection issues

---

## 13. Development Roadmap

### 13.1 Timeline Overview

**Total Timeline: 9 Months**

- **Months 1-2:** Platform Core + Multi-Tenancy
- **Months 3-5:** IMemberGenie Module
- **Months 6-8:** IEventGenie Module + Integration
- **Month 9:** AAPI Onboarding + Launch Prep
- **Month 10+:** Public Launch + Iteration

**Key Milestones:**
- Month 2: Platform core complete
- Month 5: AAPI goes live with IMemberGenie
- Month 8: IEventGenie complete
- Month 9: AAPI has full system
- Month 10: Public beta launch
- Month 12: 20 paying customers

### 13.2 Phase 1: Platform Core (Months 1-2)

**Week 1-2: Project Setup**
- Repository structure
- NestJS + React project scaffolding
- Database setup (PostgreSQL + Prisma)
- Development environment (Docker)
- CI/CD pipeline (GitHub Actions)
- Hosting accounts (Railway, Stripe, OpenAI)

**Week 3-4: Multi-Tenant Foundation**
- Tenant model and database schema
- Tenant context management
- Row-level security implementation
- Subdomain routing
- Custom domain framework (no SSL yet)

**Week 5-6: Authentication & Authorization**
- JWT authentication
- Refresh token system
- User roles and permissions
- RBAC implementation
- Login/signup flows
- Password reset

**Week 7-8: Billing & Subscriptions**
- Stripe integration
- Subscription creation flow
- Webhook handling
- Plan tier management
- Module activation/deactivation framework
- Payment method updates

**Deliverables:**
- Working platform that can:
  - Create tenants
  - Manage users with roles
  - Process payments
  - Activate/deactivate modules (framework only)
- Super admin dashboard
- Basic tenant dashboard

### 13.3 Phase 2: IMemberGenie Module (Months 3-5)

**Week 9-10: Member Database Foundation**
- Member model and schema
- Member types and categories
- Custom fields system
- CRUD operations
- Bulk import (CSV)

**Week 11-12: Member Portal**
- Member login and authentication
- Profile viewing and editing
- Dashboard for members
- Responsive design

**Week 13-14: Payment Processing**
- Stripe payment integration
- Membership fee collection
- Payment history
- Receipt generation

**Week 15-16: Admin Features**
- Member management dashboard
- Search and filtering
- Bulk operations
- Basic reporting
- Export functionality

**Week 17-18: AI Features (Post-MVP)**
- AI Form Builder integration
- OpenAI API calls
- Form generation UI
- Usage tracking
- Quota enforcement

**Week 19-20: Polish & Testing**
- Bug fixes
- Performance optimization
- Documentation
- AAPI data migration
- Training materials

**Deliverables:**
- Complete IMemberGenie module
- AAPI can manage 17,000 members
- Members can log in and manage profiles
- Admins can collect payments and renewals
- AI form builder (basic version)

**Month 5 Milestone: AAPI Goes Live with Membership**

### 13.4 Phase 3: IEventGenie Module (Months 6-8)

**Week 21-22: Event Foundation**
- Event model and schema
- Event types
- Event CRUD operations
- Event dashboard

**Week 23-24: Registration System**
- Registration forms
- Custom fields for registration
- Payment processing for tickets
- Multiple ticket types
- Registration confirmation emails

**Week 25-26: Member Integration**
- Check if user is member (IMemberGenie query)
- Member vs. non-member pricing
- Auto-populate registration with member data
- Update member profile with event attendance

**Week 27-28: Admin Features**
- Event management dashboard
- Attendee list and management
- Check-in functionality
- Event reporting
- Export attendee lists

**Week 29-30: AI Features (Post-MVP)**
- AI Event Builder integration
- Claude API calls
- Event structure generation
- Usage tracking

**Week 31-32: Polish & Testing**
- Bug fixes
- Performance testing
- Integration testing (IMemberGenie + IEventGenie)
- Documentation

**Deliverables:**
- Complete IEventGenie module
- AAPI can create and manage events
- Members can register for events
- Seamless integration with membership data
- AI event builder (basic version)

### 13.5 Phase 4: AAPI Onboarding (Month 9)

**Week 33-34: Data Migration**
- Export data from AAPI's legacy system
- Transform and clean data
- Import into platform
- Validate data integrity
- Test all workflows

**Week 35-36: Training & Launch**
- Admin training sessions
- User documentation
- Support materials
- Beta launch with AAPI staff
- Gather feedback
- Quick fixes

**Month 9 Milestone: AAPI Fully Operational**
- 17,000 members migrated
- All admins trained
- System in production use
- Ready for Annual Convention (June 2026)

### 13.6 Phase 5: Public Launch (Month 10+)

**Month 10: Beta Launch**
- Soft launch announcement
- Onboard 5-10 pilot customers
- Gather feedback
- Iterate on features
- Fix bugs

**Month 11-12: Growth**
- Marketing campaign
- Content creation
- SEO optimization
- Partner outreach
- Feature enhancements
- Scale to 20 customers

**Year 2: Scale & New Modules**
- Add Email Marketing module
- Add Fundraising module
- Add Sponsorship module
- Scale to 100 customers
- Consider team expansion

### 13.7 Development Approach

**Solo Developer + Claude Code:**
- AI-assisted development for 164-400% productivity gains
- Focus on one feature at a time
- Test thoroughly before moving on
- Document as you go
- Weekly demos to stakeholders

**Quality Gates:**
- Unit tests for critical paths
- Integration tests for module interactions
- Manual testing of user flows
- Code review (self + AI)
- Performance benchmarks

**Risk Mitigation:**
- Start simple, iterate
- MVP first, then enhancements
- Regular check-ins with AAPI
- Flexible timeline (9 months is aggressive)
- Buffer time for unexpected issues

---

## 14. Module Specifications

### 14.1 IMemberGenie Module

**Purpose:**
Comprehensive membership management with AI-powered form builder, member portal, and administrative tools.

**Target Users:**
- Org Admins: Full module access
- Module Admins: Day-to-day member management
- Members: Self-service portal

**Core Features:**

**Member Database:**
- Store member records with standard fields (name, email, phone, address)
- Unlimited custom fields (text, number, date, dropdown, checkbox, file)
- Member types (Regular, Student, Retired, Honorary, etc.)
- Member categories (Chapter, Specialty, Interest Group, etc.)
- Member levels (Basic, Premium, VIP, etc.)
- Member status (Active, Expired, Suspended, Pending, Cancelled)
- Membership history and notes

**AI Form Builder:**
- Natural language input: "Create membership form with medical specialty, board certification, years in practice"
- AI generates form structure, field types, validation rules
- Preview and edit generated form
- Save form templates for reuse
- Improvements over time based on edits

**Member Portal:**
- Secure login for members
- View and edit profile
- View membership status and expiration
- Renew membership online
- View payment history
- Download receipts and certificates

**Payment Processing:**
- Stripe integration for membership fees
- One-time and recurring payments
- Multiple membership levels with different pricing
- Discount codes and promotions
- Automated renewal reminders
- Failed payment recovery

**Admin Dashboard:**
- Member list with search and filters
- Quick stats (total members, active, expired, revenue)
- Recent activity feed
- Member management (create, edit, delete, bulk operations)
- Advanced search (by type, category, custom fields)
- Export to CSV/Excel

**Reporting:**
- Membership statistics
- Revenue reports
- Renewal rates
- Member demographics
- Custom field analysis
- Export all reports

**AI Admin Assistant:**
- Contextual help for any admin task
- Natural language queries
- Data analysis and insights
- Report generation assistance

**Bulk Operations:**
- Import members from CSV
- Export members to CSV/Excel
- Bulk email (future: requires Email Marketing module)
- Bulk status changes
- Bulk field updates

**Database Schema:** imembergenie

**Key Tables:**
- memberships: Core member records
- membership_types: Type definitions
- membership_categories: Category definitions
- membership_levels: Level definitions with pricing
- custom_fields: Field definitions
- custom_field_values: Field values per member
- forms: Form templates
- form_fields: Fields in each form
- payments: Payment records
- renewal_reminders: Automated reminder queue

### 14.2 IEventGenie Module

**Purpose:**
Event management with AI-driven event builder, registration, ticketing, and seamless integration with membership data.

**Target Users:**
- Org Admins: Full module access
- Module Admins: Event creation and management
- Members & Non-Members: Event registration

**Core Features:**

**AI Event Builder:**
- Natural language input: "3-day medical conference with 5 tracks and 20 sessions"
- AI generates event structure:
  - Days and dates
  - Tracks (parallel sessions)
  - Session time slots
  - Breaks and meals
- Admin customizes generated structure
- Admin sets pricing (not AI-suggested)

**Event Management:**
- Create single-day or multi-day events
- Event types (Conference, Workshop, Webinar, Gala, etc.)
- Event details (title, description, location, dates)
- Track and session management
- Speaker management
- Event materials (documents, slides)
- Event images and branding

**Registration System:**
- Customizable registration forms
- Custom fields per event
- Terms and conditions acceptance
- Early bird and late registration periods
- Registration deadlines
- Waitlist management

**Ticketing:**
- Multiple ticket types (General Admission, VIP, Student, etc.)
- Member vs. non-member pricing
- Quantity limits per ticket type
- Ticket transfer
- Group registration
- Promotional codes

**Member Integration (if IMemberGenie active):**
- Auto-detect if registrant is a member
- Apply member pricing automatically
- Pre-fill registration form with member data
- Update member profile with event attendance
- Member-only events (require active membership)

**Payment Processing:**
- Stripe integration for ticket sales
- Secure payment collection
- Refund processing
- Payment confirmation emails
- Automatic receipt generation

**Attendee Management:**
- Attendee list with search and filters
- Check-in functionality (manual or QR code)
- Attendance tracking by session
- Attendee communications
- Badge printing (future)

**Admin Dashboard:**
- Event list and calendar view
- Registration statistics (total, by ticket type)
- Revenue tracking
- Check-in rates
- Recent registrations feed
- Quick actions (email attendees, export list)

**Reporting:**
- Registration reports
- Revenue reports by event and ticket type
- Attendance reports
- Attendee demographics
- Integration with member data (specialty analysis, etc.)
- Export all reports

**AI Admin Assistant:**
- Event planning guidance
- Registration optimization tips
- Data analysis and insights

**Email Communications:**
- Registration confirmation emails
- Payment receipts
- Event reminders (7 days before, 1 day before)
- Post-event thank you
- Custom email blasts to attendees (future: requires Email Marketing module)

**Database Schema:** ieventgenie

**Key Tables:**
- events: Core event records
- event_types: Type definitions
- tracks: Parallel session tracks
- sessions: Individual sessions
- speakers: Speaker information
- registrations: Registration records
- tickets: Ticket type definitions
- ticket_purchases: Individual ticket purchases
- payments: Payment records
- check_ins: Attendance tracking

---

## 15. Integration Patterns

### 15.1 Single Sign-On (SSO)

**Implementation:**
- User account created in platform core (platform.users table)
- Single login works across all modules
- JWT token includes accessible modules
- User sees unified navigation

**Flow:**
1. User logs in at login.platform.com
2. Receives JWT with modules: ['imembergenie', 'ieventgenie']
3. Frontend shows both modules in navigation
4. User can switch between modules seamlessly
5. No re-authentication required

**Benefits:**
- Better user experience
- Simplified authentication
- Unified user management
- Cross-module features possible

### 15.2 Cross-Module Data Access

**Event Registration with Member Data:**

**Scenario:** Member John Smith wants to register for Annual Convention.

**Flow:**
1. John logs in (SSO)
2. Navigates to Events section (IEventGenie)
3. Clicks "Register" on Annual Convention
4. IEventGenie checks: Does tenant have IMemberGenie active?
   - **Yes:** Query imembergenie.memberships WHERE user_id = John's ID
   - Find: John is an active member
5. IEventGenie applies member pricing ($100 vs. $150 non-member)
6. Registration form pre-filled with John's data:
   - Name: From membership record
   - Email: From membership record
   - Phone: From membership record
   - Organization: From membership record
   - Medical Specialty: From custom field
7. John reviews, confirms, pays
8. Registration created in ieventgenie.registrations
9. IEventGenie updates imembergenie.memberships:
   - Add event attendance record
   - John's member profile now shows "Attended Annual Convention 2026"

**Database Interaction:**
- Direct SQL queries across schemas (same database)
- Fast (no HTTP calls)
- ACID transactions (register + update member in single transaction)

**API Interaction (if needed):**
- Service-to-service calls within backend
- Maintain service boundaries
- Explicit integration points

### 15.3 Module Communication Patterns

**Pattern 1: Database Joins (Preferred)**
- Used when: Real-time data needed, same transaction
- Implementation: JOIN across schemas
- Performance: Fast
- Example: Event registration checking member status

**Pattern 2: Service Calls (Optional)**
- Used when: Complex business logic, maintain boundaries
- Implementation: NestJS service injection
- Performance: Negligible overhead (same process)
- Example: AI service called by multiple modules

**Pattern 3: Event Bus (Future)**
- Used when: Async updates, loose coupling desired
- Implementation: Redis pub/sub or message queue
- Performance: Slight delay (acceptable)
- Example: Send email when member registers for event

### 15.4 Data Consistency

**Referential Integrity:**
- Foreign keys where appropriate
- User_id references platform.users (enforced)
- Tenant_id references platform.tenants (enforced)
- Member_id references imembergenie.memberships (nullable, not enforced)

**Eventual Consistency:**
- Cached counts (member count, event attendees)
- Updated via nightly cron jobs
- Acceptable staleness: 24 hours

**Transactional Consistency:**
- Payment processing: ACID transaction
- Event registration + member update: Single transaction
- Module activation: Transaction ensures atomicity

---

## 16. Success Metrics

### 16.1 Launch Success (Go-Live + 30 Days)

**Technical Metrics:**
- 99.5% uptime
- Zero critical bugs in production
- API response time <500ms (p95)
- Payment success rate >98%
- Zero data loss incidents

**User Metrics:**
- AAPI fully migrated (17,000 members)
- All AAPI admins trained and active
- Member portal login success rate >99%
- Support tickets <5% of user base

**Business Metrics:**
- AAPI subscription active and paid
- Zero chargeback requests
- Positive feedback from AAPI stakeholders

### 16.2 3-Month Post-Launch

**User Adoption:**
- 80% of AAPI members can use system without support
- Member portal engagement: 40%+ members logged in at least once
- Event registration adoption: 50%+ registrations online (vs. manual)

**Product Metrics:**
- 10+ pilot customers onboarded
- Module adoption rate: 70%+ use both core modules
- AI feature usage: 30%+ admins use AI tools monthly

**Business Metrics:**
- Monthly Recurring Revenue: $3,500+
- Customer churn: <5%
- Net Promoter Score: 40+

### 16.3 6-Month Post-Launch

**Growth Metrics:**
- 20+ paying customers
- MRR: $5,000+
- Average revenue per account: $250+

**Product Maturity:**
- Feature completion: 90% of planned features shipped
- AI accuracy: 80%+ generated forms used without major edits
- System uptime: 99.9%

**Customer Success:**
- Customer satisfaction: 80%+ satisfied or very satisfied
- Support response time: <2 hours
- Documentation completeness: 90%+

### 16.4 12-Month Goals

**Scale:**
- 50+ paying customers
- MRR: $15,000+
- Team size: 1-2 (considering hire)

**Product:**
- 3 modules launched (Member + Event + Email Marketing)
- Mobile-responsive across all modules
- API access for integrations

**Market Position:**
- Recognized alternative to Wild Apricot
- 3-5 case studies published
- Partner network established

---

## 17. Risk Management

### 17.1 Technical Risks

**Risk: Solo Developer Bottleneck**
- **Impact:** High - If developer unavailable, progress stops
- **Mitigation:**
  - Comprehensive documentation
  - Code comments and README files
  - Claude Code can help fill gaps
  - Consider contractor backup
- **Contingency:** Budget for contract developer if needed

**Risk: AI API Costs Exceed Budget**
- **Impact:** Medium - Could erode margins
- **Mitigation:**
  - Hard quota limits (50 generations/month)
  - Usage monitoring and alerts
  - Prompt optimization
  - Cache common responses
- **Contingency:** Pass through costs if necessary

**Risk: Database Performance at Scale**
- **Impact:** Medium - Slow queries affect UX
- **Mitigation:**
  - Proper indexing from start
  - Query optimization
  - Read replicas when needed
  - Caching layer (Redis)
- **Contingency:** Database sharding or scaling tier

**Risk: Security Breach**
- **Impact:** Critical - Could destroy business
- **Mitigation:**
  - Security best practices from day 1
  - Regular security audits
  - Penetration testing
  - Compliance with PCI-DSS
- **Contingency:** Cyber insurance, incident response plan

### 17.2 Business Risks

**Risk: AAPI Migration Fails**
- **Impact:** High - First customer and validation
- **Mitigation:**
  - Staged migration (test with subset first)
  - Parallel running period
  - Extensive testing
  - Dedicated support during transition
- **Contingency:** Extended timeline, rollback plan

**Risk: Low Customer Acquisition**
- **Impact:** High - Can't reach profitability
- **Mitigation:**
  - Start marketing early (Month 6)
  - Build email list and audience
  - Content marketing and SEO
  - Partnership with association consultants
- **Contingency:** Pivot target market or pricing

**Risk: Competitor Response**
- **Impact:** Medium - Could copy AI features
- **Mitigation:**
  - Speed to market (first-mover advantage)
  - Superior UX and modern tech
  - Relationship with customers
  - Continuous innovation
- **Contingency:** Compete on service and features

**Risk: Stripe or AI Provider Outage**
- **Impact:** Medium - Service degraded but not down
- **Mitigation:**
  - Graceful degradation (manual payment processing)
  - Clear error messages
  - Status page for transparency
- **Contingency:** Alternative payment provider ready

### 17.3 Project Risks

**Risk: Timeline Slippage**
- **Impact:** Medium - Delayed revenue
- **Mitigation:**
  - Aggressive but achievable timeline
  - Weekly progress tracking
  - Cut scope if needed (MVP first)
  - Buffer time built in
- **Contingency:** Extend timeline, prioritize AAPI

**Risk: Scope Creep**
- **Impact:** Medium - Never launch
- **Mitigation:**
  - Clear MVP definition
  - Resist feature additions
  - Post-launch enhancement list
  - Stakeholder alignment
- **Contingency:** Firm "no" to new features pre-launch

**Risk: AAPI Changes Requirements**
- **Impact:** Medium - Rework and delay
- **Mitigation:**
  - Clear contract and scope
  - Change request process
  - Regular stakeholder reviews
- **Contingency:** Negotiate timeline extension or phase 2

---

## 18. Future Vision

### 18.1 Year 1 Goals (Months 1-12)

**Product:**
- Launch platform with 2 core modules (Member + Event)
- Onboard AAPI successfully
- Achieve product-market fit with 20 customers
- Polish and iterate based on feedback

**Business:**
- $42,000 ARR by month 12
- Positive unit economics
- 5-10% monthly growth
- Strong customer testimonials

**Technical:**
- Stable, performant system (99.9% uptime)
- Comprehensive documentation
- Automated testing and CI/CD
- Monitoring and alerting

### 18.2 Year 2 Goals (Months 13-24)

**Product:**
- Launch 3 new modules:
  - Email Marketing (Month 13-15)
  - Fundraising (Month 16-18)
  - Sponsorship (Month 19-21)
- Mobile-responsive improvements
- API for third-party integrations
- Advanced Analytics module

**Business:**
- 50-100 customers
- $120,000-250,000 ARR
- Consider hiring (support, sales, or dev)
- Explore partnerships

**Technical:**
- Scale infrastructure (AWS migration)
- Implement event bus for module communication
- Add GraphQL API option
- Mobile app exploration

### 18.3 Year 3+ Vision

**Product:**
- 8-10 modules covering full association lifecycle
- Native mobile apps (iOS, Android)
- Marketplace for third-party extensions
- White-label option for larger customers
- Advanced AI features (predictive analytics, churn prediction)

**Business:**
- 200+ customers
- $500,000+ ARR
- Team of 5-10 people
- Industry leader position

**Technical:**
- Multi-region deployment
- Advanced security certifications (SOC 2, HIPAA)
- Open API ecosystem
- Microservices architecture (if needed)

### 18.4 Long-Term Differentiators

**AI Leadership:**
- Most advanced AI features in market
- Proprietary AI models fine-tuned for associations
- AI-powered insights and recommendations

**Best-in-Class UX:**
- Modern, intuitive interface
- Mobile-first design
- Accessible (WCAG 2.1 AA compliant)
- Fast and responsive

**Developer-Friendly:**
- Robust API
- Webhooks for integrations
- SDK for common platforms
- Active developer community

**Customer Success:**
- Exceptional support
- Comprehensive documentation
- Training and onboarding
- Community forum

---

## 19. Appendices

### 19.1 Glossary

**Tenant:** An organization using the platform (e.g., AAPI)
**Module:** A feature set that can be activated independently (e.g., IMemberGenie)
**SSO:** Single Sign-On - one login across all modules
**RBAC:** Role-Based Access Control - permissions based on user role
**AI Quota:** Monthly limit on AI feature usage per organization
**Member Limit:** Maximum number of members in IMemberGenie based on plan tier
**Soft Delete:** Marking data as deleted without actually removing it
**Hard Delete:** Permanently removing data from database
**Proration:** Adjusting charges when upgrading/downgrading mid-period
**Module Admin:** Administrator for a specific module within an organization
**Org Admin:** Top-level administrator for an organization/tenant

### 19.2 Open Questions / Decisions Needed

**Platform Name:**
- Decision Required: Select from 25 options or propose new name
- Impact: Branding, domains, marketing
- Deadline: Before Month 1 (development start)

**Annual vs. Monthly Billing Default:**
- Option A: Monthly default, annual discount option
- Option B: Annual default with monthly option
- Impact: Cash flow, customer commitment
- Recommendation: Monthly default (easier signup)

**White-Label Premium Feature:**
- Should we offer white-label option? (+$199/month)
- When to build? (Year 2)
- Impact: Enterprise customer appeal

**API Access:**
- Include in all plans or premium feature?
- Documentation effort required
- Recommendation: Year 2 feature, premium add-on

**Mobile App Priority:**
- Native apps needed? Or web responsive sufficient?
- Recommendation: Web responsive for Year 1, native apps Year 2-3

### 19.3 Success Criteria for Moving to Next Phase

**Phase 1 → Phase 2 (Platform Core Complete):**
- ✅ Tenants can be created and managed
- ✅ Authentication and authorization working
- ✅ Stripe billing integrated and tested
- ✅ Module activation framework functional
- ✅ Super admin dashboard operational

**Phase 2 → Phase 3 (IMemberGenie Complete):**
- ✅ Members can be created, managed, and imported
- ✅ Member portal functional
- ✅ Payment processing for memberships working
- ✅ Admin dashboard complete
- ✅ Basic AI form builder operational
- ✅ AAPI ready to migrate data

**Phase 3 → Phase 4 (IEventGenie Complete):**
- ✅ Events can be created and managed
- ✅ Registration system functional
- ✅ Payment processing for events working
- ✅ Member integration working
- ✅ Admin dashboard complete
- ✅ Basic AI event builder operational

**Phase 4 → Phase 5 (AAPI Launched):**
- ✅ All AAPI data migrated successfully
- ✅ All AAPI admins trained
- ✅ System in production use
- ✅ Zero critical bugs
- ✅ Support process established

### 19.4 Contact & Support

**Primary Developer:** [Your Name]
**Email:** [Your Email]
**Project Repository:** [GitHub URL]
**Documentation:** [Docs URL]
**Status Page:** [Status URL]

**For AAPI:**
**Support Email:** support@platform.com
**Support Portal:** [Portal URL]
**Onboarding Schedule:** [Calendly Link]

---

## Document End

This Platform Vision Document serves as the comprehensive foundation for all subsequent PRD development. All major architectural decisions, business rules, and technical specifications are documented here.

**Next Steps:**
1. Select platform name
2. Begin Phase 1 development (Platform Core)
3. Create detailed technical specifications in Claude Code
4. Weekly progress reviews
5. Iterate based on learnings

**Document Maintenance:**
- Updated weekly during development
- Version controlled in Git
- Reviewed with stakeholders monthly
- Updated after major decisions

---

**Version History:**

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 1.0 | Nov 13, 2025 | Initial comprehensive vision document | Development Team |

---

END OF PLATFORM VISION DOCUMENT
